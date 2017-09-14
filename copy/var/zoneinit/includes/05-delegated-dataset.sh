#!/bin/bash
UUID=$(mdata-get sdc:uuid)
DDS=zones/${UUID}/data

if zfs list ${DDS} 1>/dev/null 2>&1; then
	zfs create ${DDS}/gogs-custom       || true
	zfs create ${DDS}/gogs-data         || true
	zfs create ${DDS}/gogs-repositories || true
	zfs create ${DDS}/gogs-ssh          || true

	zfs set mountpoint=/opt/gogs/custom ${DDS}/gogs-custom
	zfs set mountpoint=/opt/gogs/data ${DDS}/gogs-data
	zfs set mountpoint=/opt/gogs/gogs-repositories ${DDS}/gogs-repositories
	zfs set mountpoint=/opt/gogs/.ssh ${DDS}/gogs-ssh

	# znapzend for backup
	znapzendzetup create --recursive --tsformat='%Y-%m-%d-%H%M%S' --donotask \
		SRC '7day=>8hour,30day=>1day,1year=>1week,10year=>1month' ${DDS}
	/usr/sbin/svcadm enable svc:/pkgsrc/znapzend:default
else
	mkdir /opt/gogs/{custom,data,gogs-repositories,.ssh}
fi

# update permissions for git usage
chown git:other /opt/gogs/custom
chown git:other /opt/gogs/data
chown git:other /opt/gogs/gogs-repositories
chown git:other /opt/gogs/.ssh

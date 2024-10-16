# Changelog

## 23.4.0

### New

* Initial commit to replace gogs with forgejo (#1) [Thomas Merkel]

  It's not possible to migrate from an existing gogs zone to forgejo. You
  need to handle the migration by yourself. Forgejo is a fork of Gitea
  which is a fork of Gogs long time ago.

  * Using pkgsrc package for forgejo
  * Use new file and data structure provided by the package
  * Provide initial configuration file for forgejo
  * Fixing nginx proxy configuration

### Fix

* Restructure ssl configuration for nginx. [Thomas Merkel]

## 20.3.0

### New

* Version bump for gogs (0.13+dev) and core-base (20.3.0) [Thomas Merkel]

	- Support for Git LFS
	- Allow admin to remove observers from the repository
	- New API endpoint GET /admin/teams/:teamid/members to list members of a team
	- Assets are now embedded into binary and served from memory by default

	https://github.com/gogs/gogs/blob/main/CHANGELOG.md

## 18.4.0

### New

* Core-base and gogs version bump to 0.11.88.0220. [Thomas Merkel]

### Fix

* Fix ssl-generator script path. [Thomas Merkel]

## 17.4.0

### New

- Version bump of Gogs and core-base image to 17.4.0. [Thomas Merkel]
- Use znapzendzetup with recursive on full DDS. [Thomas Merkel]

## 17.2.2

### Fix

- Switch to latest core-base to fix SSH host key issues. [Thomas Merkel]
- Use gsed and -i option. [Thomas Merkel]

## 17.2.1

### Fix

- Fix PermitUserEnvironment for gogs. [Thomas Merkel]

## 17.2.0

### New

- Version bump to newest Gogs version. [Thomas Merkel]
- Create delegate dataset for /opt/gogs/.ssh folder. [Thomas Merkel]

### Fix

- Fix unused ssl certificate removal. [Thomas Merkel]
- Fix delegate dataset ssh folder. [Thomas Merkel]

## 16.4.2

### New

* Gogs version bump to 0.11.6.0407. [Thomas Merkel]

### Fix

* Fix name in README.md. [Thomas Merkel]

## 16.4.1

### Fix

* Fix Let&#x27;s Encrypt ACME URLs. [Thomas Merkel]

## 16.4.0

### New

* Update Gogs and core-base version. [Thomas Merkel]
* Let&#x27;s Encrypt support for Gogs / Nginx service. [Thomas Merkel]

### Other

* License update. [Thomas Merkel]
* Switch to Gogs version 0.10.x. [Thomas Merkel]

  Switch to a new build process and switch to a new release location which supports https for downloading the package.

* Update readme to build gogs. [Thomas Merkel]

## 16.3.0

### New

* Update to the newest gogs version v0.9.113 and core-base image. [Thomas
  Merkel]

### Fix

* Remove Redis because we don&#x27;t use it in our mibe image. [Thomas Merkel]
* Fix readme for ssp. [Thomas Merkel]

## 16.2.0

### New

* Version Bump to newest Gogs version 20160908021429. [Thomas Merkel]

	Base image update to core-base 16.2.0, fixing hostname issue if you
	don&#x27;t setup a hostname for the zone. Work without delegate dataset as
	well.

## 15.3.1

### Fix

* Fix permissions for GOGS home and also deploy config for default env. [Thomas Merkel]
* Unlock user and modify default shell to bash. [Thomas Merkel]

## 15.3.0

### Changes

* Enable gogs services. [Thomas Merkel]
* Update to new gogs release, add license and fix issue for nginx ssl. [Thomas Merkel]
* Merge branch &#x27;XakRu-patch-2&#x27; [Thomas Merkel]
* Merge branch &#x27;patch-2&#x27; of https://github.com/XakRu/mi-core-gogs into XakRu-patch-2. [Thomas Merkel]
* Don&#x27;t deliver gogs via git, use an existing build for SmartOS. [Thomas Merkel]

### New

* Add fallback manifest. [Thomas Merkel]
* Add manifest.json, fix customize script and add backup packages. [Thomas Merkel]
* Add delegate dataset script and nginx start script. [Thomas Merkel]
* Add default / minimal nginx config for gogs. [Thomas Merkel]
* Add SMF script to start gogs on SmartOS. [Thomas Merkel]
* Add motd. [Thomas Merkel]
* Add minimal readme (copied from other repository) [Thomas Merkel]
* Add gogs binary and configuration. [Thomas Merkel]

  This is an ugly workaround as long as no gogs pkgsrc package exists.

* Minimal customize script and packages which are required. [Thomas Merkel]

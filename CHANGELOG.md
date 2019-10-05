# Changelog

The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/) and this project adheres to [Semantic Versioning](http://semver.org/spec/v2.0.0.html).

---

## [Unreleased]

### Changed

### Added

### Fixed

---

## [1.5.1] 2019-10-05

### Fixed

- Improved output of commands in `[pre]release-podspec`.

## [1.5.0] 2019-10-04

### Added

- `bumpr`: increment the desired part of a version number (major/minor/patch/build) and write the change to a git commit.

### Fixed

- Added early exit to `release-podspec` if the release tag already exists.
- Some usages of the `echoexec` lib method in `revert-failed-release-tag` and `release-podspec`.

## [1.4.2] 2019-09-25

### Fixed

- Bug in `revert-failed-release-tag`–forgot to `require 'optparse'`.

## [1.4.1] 2019-09-22

### Fixed

- Bug in `revert-failed-release-tag`.
- Help docs in `prerelease-podspec`, `release-podspec` and `revert-failed-release-tag`.

## [1.4.0] 2019-09-22

### Added

- Tools to help release CocoaPods podspecs.

## [1.3.1] 2018-10-31

### Fixed

#### `changetag`

- Clean up changelog entry contents before writing to git tags, by replacing e.g. `## [1.3.1] 2018-10-31` with `1.3.1` for the title, and reducing all subsequent markdown headers by 2 levels.

## [1.3.0] 2018-10-30

### Added

- `changetag`: a utility to extract changelog entries and write them into git tag annotation messages.

#### `sync-forks`

- Added specific exit codes per failure mode.

## [1.2.0] 2018-10-24

### Added

#### `sync-forks`

- Include option to specify a single fork repo name to sync, instead of trying to sync them all.

## [1.1.1] 2018-10-24

### Fixed

#### `sync-forks`

- When a custom path is supplied, make sure the cloned repo directories are written inside it.

## [1.1.0] 2018-09-29

### Added

- `sync-forks` to check out all your GitHub forks, adding remotes to the original upstream repos for each clone.

## [1.0.1] 2018-09-17

### Fixed

#### `rebuild-sims`

- Previously named each simulator as `device_type_name (runtime_name)`, but that broke with convention what other tools like `simctl` or Fastlane rely upon as defaults. Now just name them by the device name.

## [1.0.0] 2018-09-17

### Added

- `rebuild-sims` to delete and rebuild all possible simulators

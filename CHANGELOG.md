# Changelog

The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/) and this project adheres to [Semantic Versioning](http://semver.org/spec/v2.0.0.html).

---

## [Unreleased]

### Changed

### Added

### Fixed

---

## [rebuild-sims 1.1.1] 2018-10-24

### Fixed

#### `sync-forks`

- When a custom path is supplied, make sure the cloned repo directories are written inside it.

## [rebuild-sims 1.1.0] 2018-09-29

### Added

- `sync-forks` to check out all your GitHub forks, adding remotes to the original upstream repos for each clone.

## [rebuild-sims 1.0.1] 2018-09-17

### Fixed

#### `rebuild-sims`

- Previously named each simulator as `device_type_name (runtime_name)`, but that broke with convention what other tools like `simctl` or Fastlane rely upon as defaults. Now just name them by the device name.

## [rebuild-sims 1.0.0] 2018-09-17

### Added

- `rebuild-sims` to delete and rebuild all possible simulators

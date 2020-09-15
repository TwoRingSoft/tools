# Changelog

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/) and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

---

## [Unreleased]

### Fixed

- Use the same value in a prerelease podspec version as will be used to form the git tag.

## [4.4.0] 2020-09-14

### Added

- Option on `prerelease-podspec` to skip creating git tags, for situations where it might be called multiple times for different variants on a release candidate.

## [4.3.2] 2020-09-10

### Fixed

- Correctly interpret `release-podspec`'s `--no-changelog` option.

## [4.3.1] 2020-09-10

### Fixed

- `release-podspec` now provides the full path to the podspec being released in the case where `--repo` is specified, instead of a push to CococaPods trunk.

## [4.3.0] 2020-09-10

### Added

- Option in `release-podspec` to skip changelog updates and just form a plain tag instead.

## [4.2.0] 2020-09-10

### Added

- Option in `prerelease-podspec` to provide a custom release candidate identifier.

## [4.1.0] 2020-09-09

### Added

- Option on `prerelease-podspec` and `release-podspec` to specify a custom tag value.

### Fixed

- The `--podspec-name-in-tag` option's short name in `prerelease-podspec` was copypasta'd from another option. Specified a unique one: `-p` and change the short name in `release-podspec` from `-n` to `-p` to match.

## [4.0.1] 2020-08-20

### Fixed

- 4.0.0 accidentally removed the feature added in 3.1.0. It has been replaced.

## [4.0.0] 2020-08-20

### Changed

- `prerelease-podspec` and `release-podspec` now accept the path to a podspec as their parameter, instead of the podspec name which would be used to construct the path always in the root directory. Sometimes the podspec isn't in the root!

## [3.1.0] 2020-08-09

### Added

- `--skip-tests` option for `prerelease-podspec` like the option for `release-podspec`.

## [3.0.2] 2020-08-04

### Fixes

- Update dependency on `github_api` to 0.19 so the transitive dependency on `faraday` stays compatible with Fastlane's dependency on it, as it has changed to 1.0.

## [3.0.1] 2020-04-20

### Fixes

- Bad paths in `require_relative` in `bumpr` and `changetag` caused the scripts to fail.

## [3.0.0] 2020-04-18

## Changed

- Scripts no longer try to stash/pop git index changes, they will now just fail.

## Fixed

- Bad regex in `clean-rc-tags`.

## [2.1.1] 2020-04-16

### Fixed

- Fix bug when trying to use `release-podspec`'s `--changelog-path` option.

## [2.1.0] 2020-04-15

### Added

- Option `--changelog-entry` on `release-podspec` to provide a name for the changelog entry if it's different than the tag name.

## [2.0.3] 2020-04-15

### Fixed

- Invocation of `changetag` without including podspec name when `--podspec-name-in-tag` is provided.

## [2.0.2] 2020-04-14

### Fixed

- Invocation of `changetag` in `release-podspec`.
- Always set git commit comment character to `@` in `changetag`.

## [2.0.1] 2020-04-14

### Added

- `update-all-usages` will `find` all Gemfiles with a certain gem name and under a certain directory update it wherever it's found.

### Fixed

- Remove `#` from podspec push command in `release-podspec`
- Fixed the entry for 2.0.0 in this changelog.

## [2.0.0] 2020-04-14

### Changed

- Renamed `rebuild-sims` to `xcsims` and made rebuilding an option `-r/--rebuild`. Added an option to shut down all simulators: `-s/--shutdown`.

### Added

- For a changelog adhering to [Keep a Changelog](https://keepachangelog.com/en/1.0.0/), introduce a tool `migrate-changelog` to move any contents under Unreleased to a new section for a new version with the current date.

### Fixed

- Invocation to `changetag` that wrongly referenced this project's gemspec file for a version in `release-podspec`. Didn't change it after testing on this project.

## [1.13.0] 2020-03-26

## Added

- `--no-commit` option to `bumpr` to avoid forming a git commit with changes.

## [1.12.0] 2020-03-20

## Added

- Options to use `changetag` in `prerelease-podspec` and to stay on the current git branch instead of creating a temporary new branch.

## [1.11.0] 2020-03-15

## Added

- `release-podspec` now uses `changetag` to create annotated release tags with CHANGELOG.md contents.

## [1.10.0] 2020-03-15

## Added

- `clean-rc-tags` which deletes any release candidate tags leftover after prerelease testing.

## [1.9.2] 2020-03-10

### Fixed

- Yanked 1.9.1. Need to push a new version number.

## [1.9.1] 2020-03-10

### Fixed

- When providing `--podspec-name-in-tag`, don't put the podspec name in the podspec's `version` property, because those podspecs that do use the name in the tag will have a `:tag` value of `#{name}-#{version}`, which would result in the podspec name appearing twice if it also appeared in the `version`.

## [1.9.0] 2019-12-12

### Changed

### Added
- Command line option to specify if the tags in `revert-failed-release-tag` should use the podspec's name, same as 1.7.0's change to `prerelease-podspec` and 1.8.0's change to `release-podspec`.

## [1.8.0] 2019-12-12

### Changed

### Added
- Command line option to specify if the tags in `release-podspec` should use the podspec's name, same as 1.7.0's change to `prerelease-podspec`.

## [1.7.0] 2019-12-04

### Changed

### Added
- Command line option to specify if the tags in `prerelease-podspec` should use the podspec's name; helpful if the repo has multiple podspecs and must distinguish between versions of different ones in tag names.

### Fixed
- Use the same tag value in the version string in podspecs being tested by `prerelease-podspec`.

## [1.6.0] 2019-11-26

### Fixed

- `release-podspec` prints the command used to create the release tag before executing it.

## [1.5.3] 2019-10-12

### Fixed

- `release-podspec` prints the command used to create the release tag before executing it.

## [1.5.2] 2019-10-05

### Fixed

- Output more results from shell commands in `release-podspec`.

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

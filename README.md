# tools

A collection of scripts and tools to help with software development. Each executable in `bin/` can be run with `-h/--help` for information.

# Installation

## RubyGems

Install directly at the command line:

```sh
gem install tworingtools
```

Or make sure you have the following in your `Gemfile`:

```sh
source 'https://rubygems.org'
gem 'tworingtools'
```

## Manual

Distributed as a Ruby Gem with executable scripts. Clone or download this repo, then `cd` in and run

```sh
gem build tworingtools.gemspec
gem install tworingtools-1.0.0.gem # make sure you use the right filename, in case the version is newer or formatting changes!
```

You should then have all the tools available in your `PATH`.

# TODO

## `sync-forks`

- `--upstream-sync`: fetch upstream's default branch, try to apply new commits to local default branch using `--ff-only` and push to forks' remotes
- `--tags`: download tags from upstreams, and maybe push to forks
- `--repo`: only sync the repo name provided
- `--standardize-remotes`: for forks already cloned locally, inspect the git remotes and ensure a remote exists for the fork's repo named “fork” and one exists for the original repo's remote named “upstream”
- `--prune`: delete any repositories not found in the forks list received from GitHub api

## `changetag`

- Post extracted changelog entries to GitHub/GitLab/etc release notes for tags using their API. This will cause them to actually be rendered with markdown, whereas the tag annotation messages are not. May need to rename from `changetag` to something more appropriate, or create a different tool to do this part.

## `prerelease-podspec`/`release-podspec`

- generalize to other types of dependency specs, rename to [`pre`]`release-spec`

## `update-all-usages`

- finish implementation
- compile results of all updates into digestible format

## `revert-failed-release-tag`

- generalize to other types of dependency specs

# Contribute

Issues and pull requests are welcome! 

If this project helped you, please consider <a href="https://www.paypal.me/armcknight">leaving a tip</a> 🤗

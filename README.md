# tools

A collection of scripts and tools to help with software development.

- `rebuild-sims`: Delete all  simulators and recreate one for each compatible platform and device type pairing.
- `sync-forks`: Make sure all your GitHub forks are clones into a given directory, and have “upstream” remotes pointing to the repos that were forked.

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

## sync-forks

- `--upstream-sync`: fetch upstream's default branch, try to apply new commits to local default branch using `--ff-only` and push to forks' remotes
- `--tags`: download tags from upstreams

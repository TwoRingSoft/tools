# tools

A collection of scripts and tools to help with software development.

- `rebuild-sims`: Delete all  simulators and recreate one for each compatible platform and device type pairing.
- `sync-forks`: Make sure all your GitHub forks are clones into a given directory, and have “upstream” remotes pointing to the repos that were forked.
- `changetag`: Extract changelog entries to write into git tag annotation messages.

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
- `--tags`: download tags from upstreams
- `--repo`: only sync the repo name provided
- `--standardize-remotes`: for forks already cloned locally, inspect the git remotes and ensure a remote exists for the fork's repo named “origin” and one exists for the original repo's remote named “upstream”
- `--prune`: delete any repositories not found in the forks list received from GitHub api

## `changetag`

- Post extracted changelog entries to GitHub/GitLab/etc release notes for tags. This will cause them to actually be rendered with markdown, whereas the tag annotation messages are not. May need to rename from `changetag` to something more appropriate, or create a different tool to do this part.

# Contribute

Issues and pull requests are welcome! 

If this project helped you, please consider <a href="https://www.paypal.me/armcknight">leaving a tip</a> 🤗

Do you need help with a project? [I'm currently available for hire or contract.](http://tworingsoft.com/contracts).

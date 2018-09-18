# tools

A collection of scripts and tools.

- `rebuild-sims`: Delete all Xcode simulators and recreate one for each compatible platform and device type pairing. Devices are named using the name of each device type, as provided by `simctl`.

# Installation

## RubyGems

Install directly at the command line:

	> gem sources
		*** CURRENT SOURCES ***
		
		https://rubygems.org/
	> gem install tworingtools
	

Or make sure you have the following in your gem file:

	source 'https://rubygems.org'
	gem 'tworingtools'

## Manual

Distributed as a Ruby Gem with executable scripts. Clone or download this repo, then `cd` in and run

	> gem build tworingtools.gemspec
	> gem install tworingtools-1.0.0.gem # make sure you use the right filename, in case the version is newer or formatting changes!

You should then have all the tools available in your `PATH`.

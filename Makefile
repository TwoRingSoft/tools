init:
	rbenv exec bundle update

version:
	rbenv exec bundle exec bumpr $(COMPONENT) tworingtools.gemspec

build:
	gem build tworingtools.gemspec

install:
	rbenv exec gem install tworingtools-`vrsn --read --file tworingtools.gemspec`.gem

release:
	rbenv exec bundle exec changetag CHANGELOG.md `vrsn --read --file tworingtools.gemspec`
	git push --tags
	rbenv exec gem push tworingtools-`vrsn --read --file tworingtools.gemspec`.gem
	git push
	
version:
	rbenv exec bundle exec bumpr $(COMPONENT) tworingtools.gemspec

build:
	gem build tworingtools.gemspec

install:
	rbenv exec gem install tworingtools-`vrsn --read --file tworingtools.gemspec`.gem

release:
	rbenv exec changetag CHANGELOG.md `vrsn --read --file tworingtools.gemspec`
	git push --tags
	gem push tworingtools-`vrsn --read --file tworingtools.gemspec`.gem
	git push
	
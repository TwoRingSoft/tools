build:
	gem build tworingtools.gemspec

install:
	rbenv exec gem install $(GEMSPEC)

release:
	rbenv exec changetag CHANGELOG.md `vrsn --read --file tworingtools.gemspec`
	git push --tags
	gem push $(GEMSPEC)
	
init:
	brew bundle
	rbenv install --skip-existing
	rbenv exec bundle

version:
	rbenv exec bundle exec bumpr $(COMPONENT) tworingtools.gemspec
	rbenv exec bundle exec migrate-changelog CHANGELOG.md `vrsn --read --file tworingtools.gemspec`

build:
	gem build tworingtools.gemspec

install:
	rbenv exec gem install tworingtools-`vrsn --read --file tworingtools.gemspec`.gem

release:
	git config core.commentchar '@'
	rbenv exec bundle exec changetag CHANGELOG.md `vrsn --read --file tworingtools.gemspec`
	git push --tags
	rbenv exec gem push tworingtools-`vrsn --read --file tworingtools.gemspec`.gem
	git push

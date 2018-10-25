build:
	gem build tworingtools.gemspec

install:
	rbenv exec gem install $(GEMSPEC)

release:
	gem push $(GEMSPEC)
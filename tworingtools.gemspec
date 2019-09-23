Gem::Specification.new do |s|
  s.name        = 'tworingtools'
  s.version     = '1.4.0'
  s.date        = '2018-10-30'
  s.summary     = 'A collection of command line tools.'
  s.description = <<-DESC
  - rebuild-sims: Delete all simulators and recreate one for each compatible platform and device type pairing.
  - sync-forks: Make sure all your GitHub forks are clones into a given directory, and have “upstream” remotes pointing to the repos that were forked.
  - changetag: Extract changelog entries to write into git tag annotation messages.
  DESC
  s.authors     = ['Andrew McKnight']
  s.email       = 'andrew@tworingsoft.com'
  s.files       = [
    'lib/echoexec.rb'
  ]
  s.executables = [
    'rebuild-sims',
    'sync-forks',
    'changetag',
    'prerelease-podspec',
    'release-podspec',
    'revert-failed-release-tag'
  ]
  s.homepage    = 'https://github.com/TwoRingSoft/tools'
  s.license     = 'MIT'
  s.add_runtime_dependency 'github_api', '~> 0.18'
  s.add_runtime_dependency 'json', '~> 2.1'
end

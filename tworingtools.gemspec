Gem::Specification.new do |s|
  s.name        = 'tworingtools'
  s.version     = '1.5.1'
  s.date        = '2019-10-05'
  s.summary     = 'A collection of command line tools.'
  s.description = <<-DESC
  - rebuild-sims: Delete all simulators and recreate one for each compatible platform and device type pairing.
  - sync-forks: Make sure all your GitHub forks are clones into a given directory, and have “upstream” remotes pointing to the repos that were forked.
  - changetag: Extract changelog entries to write into git tag annotation messages.
  - prerelease-podspec: Branch and create/push a release candidate tag, modify the podspec to use that version tag, and try linting it.
  - release-podspec: Create a tag with the version and push it to repo origin, push podspec to CocoaPods trunk.
  - revert-failed-release-tag: In case `release-podspec` fails, make sure the tag it may have created/pushed is destroyed before trying to run it again after fixing, so it doesn't break due to the tag already existing the second time around.
  - bumpr: Increment the desired part of a version number (major/minor/patch/build) and write the change to a git commit.
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
    'revert-failed-release-tag',
    'bumpr'
  ]
  s.homepage    = 'https://github.com/TwoRingSoft/tools'
  s.license     = 'MIT'
  s.add_runtime_dependency 'github_api', '~> 0.18'
  s.add_runtime_dependency 'json', '~> 2.1'
end

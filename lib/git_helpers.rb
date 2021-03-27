require 'octokit'
require_relative 'echoexec'

def sync_repo repo_info, root_dir_path
  name = repo_info.name
  ssh_url = repo_info.ssh_url

  path = "#{root_dir_path}/#{name}"
  already_cloned = Dir.exist?(path)

  # clone any forks not already cloned
  unless already_cloned then
    echo_and_exec "git clone #{ssh_url} #{path}"
  end

  # for repos that were cloned previously, update them by fast-forwarding the default branch and fetch all tags
  if already_cloned then
    Dir.chdir path do
      echo_and_exec "git fetch && git fetch --tags && git pull --ff-only"
    end
  end
end


def sync_fork forked_repo_info, root_dir_path
  upstream_ssh_url = forked_repo_info.source.ssh_url
  original_owner = forked_repo_info.source.owner.login
  name = forked_repo_info.name
  fork_ssh_url = forked_repo_info.ssh_url

  upstream_remote_name = 'upstream'
  fork_remote_name = 'fork'
  path = "#{root_dir_path}/_Forks/#{original_owner}/#{name}"
  already_cloned = Dir.exist?(path)

  # clone any forks not already cloned
  unless already_cloned then
    echo_and_exec "git clone #{fork_ssh_url} #{path}"
  end

  Dir.chdir path do
    # if we just cloned the repo locally, set up both remotes
    unless already_cloned then
      echo_and_exec "git remote add #{upstream_remote_name} #{upstream_ssh_url}"
      echo_and_exec "git remote rename origin #{fork_remote_name}"
    end

    # get the names of the default branches
    fork_default_branch_name = `git remote show #{fork_remote_name} | grep "HEAD branch" | cut -d ":" -f 2`.strip
    fork_default_local_branch_name = "#{fork_remote_name}_#{fork_default_branch_name}"
    upstream_default_branch_name = `git remote show #{upstream_remote_name} | grep "HEAD branch" | cut -d ":" -f 2`.strip
    upstream_default_local_branch_name = "#{upstream_remote_name}_#{upstream_default_branch_name}"

    # if we just cloned the repo locally, set local default tracking branches
    unless already_cloned then
      # rename the cloned local default branch to reflect that it's tracking the fork remote's version
      echo_and_exec "git branch -m #{fork_default_branch_name} #{fork_default_local_branch_name}"

      # set up a local branch to track the upstream remote's default branch
      echo_and_exec "git fetch #{upstream_remote_name}"
      echo_and_exec "git checkout -b #{upstream_default_local_branch_name} #{upstream_remote_name}/#{upstream_default_branch_name}"

      # push the local upstream default tracking branch to the fork's remote, so it also has a copy alongside it's default branch
      echo_and_exec "git push #{fork_remote_name} HEAD:#{upstream_default_local_branch_name}"
    end

    # for repos that were cloned previously, update them by fast-forwarding both default branches and fetch all tags
    if already_cloned then
      echo_and_exec "git checkout #{fork_default_local_branch_name}"
      echo_and_exec "git pull --ff-only #{fork_remote_name}"
      echo_and_exec "git fetch --tags #{fork_remote_name}"

      echo_and_exec "git checkout #{upstream_default_local_branch_name}"
      echo_and_exec "git pull --ff-only #{upstream_remote_name}"
    end
  end
end

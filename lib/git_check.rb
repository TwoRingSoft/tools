require 'open3'
require_relative 'errors'

def git_check
    modified_file_count, stderr, status = Open3.capture3("git status --porcelain | egrep '^(M| M)' | wc -l")
    if modified_file_count.to_i > 0 then
        puts 'Please commit all changes to working index before proceeding.'
        exit TwoRingToolError::GIT_DIRTY_INDEX
    end
end

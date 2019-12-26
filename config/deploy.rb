require "active_support/all"

set :application, 'Window'

fetch(:linked_files).concat %w[
  config/env
  tmp/restart.txt
]

set :bundle_flags, ""
fetch(:rsync_options).concat %w[--exclude=node_modules --exclude=Gemfile.lock]

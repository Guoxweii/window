# Load DSL and Setup Up Stages
require 'capistrano/setup'

# Includes default deployment tasks
require 'capistrano/deploy'

# Includes tasks from other gems included in your Gemfile
#
# For documentation on these, see for example:
#
#   https://github.com/capistrano/rvm
#   https://github.com/capistrano/rbenv
#   https://github.com/capistrano/chruby
#   https://github.com/capistrano/bundler
#   https://github.com/capistrano/rails
#
# require 'capistrano/rvm'
# require 'capistrano/rbenv'
# require 'capistrano/chruby'
# require 'capistrano/bundler'
# require 'capistrano/rails/assets'
# require 'capistrano/rails/migrations'

require 'capsum/typical'
# require 'capsum/sidekiq'
# require 'capistrano/slackify'

require 'capsum/rsync'
install_plugin Capsum::Rsync

Dir.glob("core/lib/capistrano/tasks/*.rake").each { |r| import r }
Dir.glob("lib/capistrano/tasks/*.rake").each { |r| import r }

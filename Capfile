# Load DSL and set up stages
require "capistrano/setup"

require "capistrano/deploy"


# If you are using rbenv add these lines:
# require 'capistrano/rbenv'
# set :rbenv_type, :user
# set :rbenv_ruby, '2.4.0'

# If you are using rvm add these lines:
# require 'capistrano/rvm'
# set :rvm_type, :user
# set :rvm_ruby_version, '2.4.0'

# Load the SCM plugin appropriate to your project:
#
# require "capistrano/scm/hg"
# install_plugin Capistrano::SCM::Hg
# or
# require "capistrano/scm/svn"
# install_plugin Capistrano::SCM::Svn
# or
require "capistrano/scm/git"
install_plugin Capistrano::SCM::Git

require 'capistrano/rbenv'
set :rbenv_type, :user
set :rbenv_ruby, '2.4.0'

require 'capistrano/bundler'
require 'capistrano/rails'




# Load custom tasks from `lib/capistrano/tasks` if you have any defined
Dir.glob("lib/capistrano/tasks/*.rake").each { |r| import r }

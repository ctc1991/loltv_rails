# config valid only for current version of Capistrano
lock "3.8"

set :application, "loltv"
set :repo_url, "https://github.com/ctc1991/loltv_rails.git"
set :deploy_to, '/home/ctc/loltv/'


append :linked_files, "config/database.yml", "config/secrets.yml"
append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "vendor/bundle", "public/system", "public/uploads"
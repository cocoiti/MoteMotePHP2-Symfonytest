set :stages, %w(production staging)
set :stage_dir, "app/config/deploy"
require "capistrano/ext/multistage"
require 'capistrano/gitflow'


set :use_sudo, true
set :application, "Himote"
set :domain,      "motemote.himote.jp"
set :deploy_to,   "/motemote/site/#{domain}"
set :app_path,    "app"

set :user, "cocoiti" 
set :deploy_via, :rsync_with_remote_cache
set :repository,  "git@github.com:cocoiti/MoteMotePHP2-Symfonytest.git"
set :scm,         :git
set :model_manager, "doctrine"
set  :keep_releases,  3

set :shared_files,      ["app/config/parameters.ini"]
set :update_vendors, true

set :use_sudo, true
set :application, "Himote"
set :domain,      "motemote.himote.jp"
set :deploy_to,   "/motemote/site/#{domain}"
set :app_path,    "app"

set :repository,  "#{domain}:/var/repos/#{application}.git"
set :scm,         :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `subversion`, `mercurial`, `perforce`, `subversion` or `none`

set :model_manager, "doctrine"
# Or: `propel`

role :web,          '59.106.179.70'                         # Your HTTP server, Apache/etc
# role :app,        domain                         # This may be the same as your `Web` server
# role :db,         domain, :primary => true       # This is where Rails migrations will run

set  :keep_releases,  3

load 'app/config/deploy.rb'
set :deploy_to,   "/motemote/site/#{domain}"
role :web,          '59.106.179.70'
set  :keep_releases,  3

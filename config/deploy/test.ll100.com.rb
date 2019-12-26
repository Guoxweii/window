set :deploy_to, -> { "/home/app/www/frontend" }
server 'app@sh.ll100.com:4029', roles: %w[web app db], primary: true

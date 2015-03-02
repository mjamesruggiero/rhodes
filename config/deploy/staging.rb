require 'dotenv'
Dotenv.load('/Volumes/Keymaster/adserver_staging/adserver_staging.keys')

require 'capify-ec2/capistrano'
ec2_roles name: 'app', options: {default: true}

set :user, 'ubuntu'
set :keys_dir, '/Volumes/Keymaster/adserver_staging'
ssh_options[:forward_agent] = true
ssh_options[:keys]          = ["#{keys_dir}/adserver_staging.pem"]

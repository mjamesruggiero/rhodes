# -*- encoding : utf-8 -*-
set :stages, %w(staging production)
set :default_stage, 'staging'
require 'capistrano/ext/multistage'

set :application, 'rhodes'
set :repository, '.'
set :scm, :none

set :user, 'ubuntu'
set :use_sudo, false

Dir['lib/cap/**/*.rb'].each { |cap_file| load cap_file }

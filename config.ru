# This file is used by Rack-based servers to start the application.
require 'rubygems'
require 'bundler'

Bundler.require

require './countries'
run Sinatra::Application

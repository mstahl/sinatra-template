#!/usr/bin/env ruby

require 'rubygems'
require 'sinatra'

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each {|file| require file }

configure do
  # Add your configurations here
end

get "/" do
  haml :home
end
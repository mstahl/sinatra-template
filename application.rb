#!/usr/bin/env ruby

require 'rubygems'
require 'sinatra'

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each {|file| require file }

class SinatraTemplate < Sinatra::Base     # TODO Change class name
  configure do
    # Add your configurations here
  end

  helpers do
    def stylesheet(name)
      haml "%link{:href => '/styles/#{name}.css', :media => 'all', :rel => 'stylesheet'}"
    end

    def javascript(name)
      haml "%script{:src => '/scripts/#{name}.js'}"
    end
  end
  
  get "/" do
    haml :home
  end
end

# Dir[File.dirname(__FILE__) + '/resources/*.rb'].each {|file| require file }
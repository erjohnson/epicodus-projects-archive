require 'sinatra'
require 'json'
require 'rspec'
require 'rack/test'
require 'pg'
require 'active_record'
require 'pry'
require 'shoulda/matchers'
require 'ticket'
require 'project'
require './api.rb'

ActiveRecord::Base.establish_connection(YAML::load(File.open('./db/config.yml'))["test"])

RSpec.configure do |config|
  config.formatter = 'doc'
  config.include Rack::Test::Methods
  config.after(:each) do
    Ticket.all.each { |ticket| ticket.destroy }
    Project.all.each { |project| project.destroy }
  end
end
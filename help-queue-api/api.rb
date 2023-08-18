require 'sinatra'
require 'pg'
require 'active_record'
require 'json'
require './lib/ticket.rb'
require './lib/project.rb'

# Get all the tickets
get '/tickets' do
  Ticket.all.to_json
end

# Get ticket by id
get '/tickets/:id' do
  Ticket.find(params[:id]).to_json
end

# Create a ticket
post '/tickets' do
  @ticket = Ticket.new(params[:ticket])
  @ticket.save.to_json
end

# Update a ticket
put '/tickets/:id' do
  @ticket = Ticket.find(params[:id])
  @ticket.update(params[:ticket]).to_json
end
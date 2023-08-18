require 'bundler/setup'
Bundler.require(:default, :test)
Dir[File.dirname(__FILE__) + '/../lib/*.rb'].each { |file| require file }

database_configurations = YAML::load(File.open('./db/config.yml'))
test_configuration = database_configurations['test']
ActiveRecord::Base.establish_connection(test_configuration)

RSpec.configure do |config|
  config.formatter = 'doc'
  config.before(:each) do
    Term.all.each { |a| a.destroy }
    User.all.each { |a| a.destroy }
    Day.all.each { |a| a.destroy }
    CheckIn.all.each { |a| a.destroy }
  end
end
require 'rspec'
require 'pry'
require 'pg'
require 'doctor'
require 'company'

DB = PG.connect({:dbname => 'doctors_office_test'})

RSpec.configure do |config|
  config.before(:each) do
    DB.exec("DELETE FROM doctors *;")
    DB.exec("DELETE FROM companies *;")
  end
end

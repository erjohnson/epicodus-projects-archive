require 'rspec'
require 'user'
require 'timestamp'

RSpec.configure do |config|
  config.before(:each) do
    User.clear
    TimeStamp.clear
  end
end

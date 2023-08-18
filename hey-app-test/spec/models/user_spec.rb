require 'rails_helper'

RSpec.describe User, :type => :model do
  pending "has many messages"
  it { should validate_uniqueness_of :name }
end

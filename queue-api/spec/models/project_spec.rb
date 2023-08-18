require 'rails_helper'

describe Project do
  it { should have_many :tickets }
  it { should validate_presence_of :name }
end

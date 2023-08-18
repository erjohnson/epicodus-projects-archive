require 'rails_helper'

describe Ticket do
  it { should belong_to :project }
  it { should validate_presence_of :project_id }
  it { should validate_presence_of :student }
  it { should validate_presence_of :question }
end

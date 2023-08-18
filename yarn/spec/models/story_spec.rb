require 'rails_helper'

describe Story do
  it { should belong_to :project }
  it { should validate_presence_of :project_id }
  it { should validate_presence_of :name }
end

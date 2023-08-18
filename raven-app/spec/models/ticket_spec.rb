require 'rails_helper'

RSpec.describe Ticket, :type => :model do

  it { should belong_to :user }
  it { should belong_to :lesson }
  it { should validate_presence_of :user_id }
  it { should validate_presence_of :lesson_id }
  it { should validate_presence_of :question }

  it "sets current time when taken is true" do
    ticket = Ticket.create(question: "how", user_id: 1, lesson_id: 1)
    ticket.take_ticket
    expect(ticket.taken_at).to_not be_nil
  end
end

require 'helper_spec'


describe 'Ticket' do

  describe 'initialize' do
    it 'initializes with a hash' do
      new_ticket = Ticket.new({ :partner_one=> 'Roger', :partner_two=> 'Kim' })
      expect(new_ticket).to be_an_instance_of Ticket
    end

    it 'sets @done to false' do
      new_ticket = Ticket.new({ :partner_one=> 'Roger', :partner_two=> 'Kim' })
      expect(new_ticket.done).to eq false
    end
  end

  describe 'object attributes' do
    it 'lets you read partner names' do
      new_ticket = Ticket.new({ :partner_one=> 'Roger', :partner_two=> 'Kim' })
      expect(new_ticket.partner_one).to eq 'Roger'
      expect(new_ticket.partner_two).to eq 'Kim'
    end

    it 'lets you read the subject' do
      new_ticket = Ticket.new({ :subject=> 'Ruby Classes' })
      expect(new_ticket.subject).to eq 'Ruby Classes'
    end

    it 'lets you read the issue' do
      new_ticket = Ticket.new({ :issue=> 'How to make attributes readable?' })
      expect(new_ticket.issue).to eq 'How to make attributes readable?'
    end

    it 'lets you read the time stamp' do
      new_ticket = Ticket.new({})
      expect(new_ticket.time_stamp).to eq Time.new.strftime("%I:%M%p")
    end
  end

  describe '.all' do
    it 'starts as an empty array' do
      expect(Ticket.all).to eq []
    end

    it 'shows all tickets' do
      new_ticket1 = Ticket.new({})
      new_ticket1.save
      new_ticket2 = Ticket.new({})
      new_ticket2.save
      expect(Ticket.all).to eq [new_ticket1, new_ticket2]
    end
  end

  describe '.clear' do
    it 'removes all tickets' do
      new_ticket = Ticket.new({})
      new_ticket.save
      Ticket.clear
      expect(Ticket.all).to eq []
    end
  end

  describe 'save' do
    it 'saves a ticket' do
      new_ticket = Ticket.new({})
      new_ticket.save
      expect(Ticket.all[0]).to eq new_ticket
    end
  end

  describe 'remove' do
    it 'deletes a ticket' do
      new_ticket = Ticket.new({})
      new_ticket.save
      new_ticket.remove
      expect(Ticket.all).to eq []
    end
  end

  describe 'mark_done' do
    it 'marks the ticket as done in the tickets array' do
      new_ticket = Ticket.new({})
      new_ticket.save
      new_ticket.mark_done
      expect(Ticket.all[0].done).to eq true
    end

    it 'does not mark ticket if already done' do
      new_ticket = Ticket.new({})
      new_ticket.save
      Ticket.all[0].done = true
      expect(new_ticket.mark_done).to eq "Already marked done."
    end

    it 'checks if the ticket is on the list' do
      new_ticket = Ticket.new({})
      expect(new_ticket.mark_done).to eq "Ticket is not on the list."
    end
  end
end

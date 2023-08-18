require 'helper_spec'

describe 'Pair' do
  
  describe 'initialize' do
    it 'initializes with a hash' do
      new_pair = Pair.new({})
    end
  end

  describe 'object attributes' do
    it 'lets you read pair names' do
      new_pair = Pair.new({ :name_one=> 'Carol', :name_two=> 'Marty' })
    end
  end

  describe '.all' do
    it 'starts as an empty array' do
      expect(Pair.all).to eq []
    end

    it 'shows all pairs' do
      new_pair1 = Pair.new({})
      new_pair1.save
      new_pair2 = Pair.new({})
      new_pair2.save
      expect(Pair.all).to eq [new_pair1, new_pair2]
    end
  end

  describe '.clear' do
    it 'removes all pairs' do
      new_pair1 = Pair.new({})
      new_pair1.save
      new_pair2 = Pair.new({})
      new_pair2.save
      Pair.clear
      expect(Pair.all).to eq []
    end
  end

  describe 'save' do
    it 'saves a pair' do
      new_pair = Pair.new({})
      new_pair.save
      expect(Pair.all[0]).to eq new_pair
    end
  end

  describe 'remove' do
    it 'deletes a pair' do
      new_pair = Pair.new({})
      new_pair.save
      new_pair.remove
      expect(Pair.all).to eq []
    end
  end

  describe 'show_pair_tickets' do
    it 'return tickets created by the pair' do
      new_pair = Pair.new({ :name_one=> 'Carol', :name_two=> 'Marty' })
      new_pair.save
      new_ticket1 = Ticket.new({ :partner_one=> 'Carol', :partner_two=> 'Marty' })
      new_ticket1.save
      new_ticket2 = Ticket.new({ :partner_one=> 'Carol', :partner_two=> 'Marty' })
      new_ticket2.save
      new_ticket3 = Ticket.new({ :partner_one=> 'Joe', :partner_two=> 'Louie' })
      new_ticket3.save
      expect(new_pair.show_pair_tickets).to eq [new_ticket1, new_ticket2]
    end
  end
end

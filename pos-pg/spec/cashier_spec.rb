require 'spec_helper'

describe 'Cashier' do
  describe '.login' do
    it 'matches given name to existing cashier name' do
      new_cashier = Cashier.create(:name => 'Humungus')
      expect(Cashier.login('Humungus').first.name).to eq 'Humungus'
    end
  end
end

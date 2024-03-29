require 'doc_office_spec'

describe 'Insurance' do
  it 'initializes with a hash' do
    new_insurance = Insurance.new({:company=>'Red Shield'})
    expect(new_insurance).to be_an_instance_of Insurance
  end

  describe '.all' do
    it 'returns an empty array to start' do
      expect(Insurance.all).to eq []
    end
  end

  describe 'save' do
    it 'saves a new insurance' do
      new_insurance1 = Insurance.new({:company=>'Swag Farm'})
      new_insurance1.save
      new_insurance2 = Insurance.new({:company=>'Red Shield'})
      new_insurance2.save
      new_insurance3 = Insurance.new({:company=>'Advantage'})
      new_insurance3.save
      expect(Insurance.all).to eq [new_insurance1, new_insurance2, new_insurance3]
    end
  end

  describe 'remove' do
    it 'removes a insurance' do
      new_insurance = Insurance.new({:company=>'Red Shield'})
      new_insurance.save
      new_insurance.remove
      expect(Insurance.all).to eq []
    end
  end
end


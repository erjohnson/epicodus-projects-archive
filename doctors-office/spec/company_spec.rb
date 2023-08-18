require 'spec_helper'


describe 'Company' do
  it 'initializes with a hash' do
    new_company = Company.new({:name => 'Red Shield'})
    expect(new_company).to be_an_instance_of Company
  end

  it 'lets you read the name' do
    new_company = Company.new({:name => 'Tsar Health Affiliates'})
    expect(new_company.name).to eq 'Tsar Health Affiliates'
  end

  describe '.all' do
    it 'starts as an empty array' do
      expect(Company.all).to eq []
    end
  end

  describe 'save' do
    it 'saves a company' do
      new_company = Company.new({:name => 'Diamonte'})
      new_company.save
      expect(Company.all).to eq [new_company]
    end

    it 'gives the company object an id' do
      new_company = Company.new({:name => 'Shasta Health'})
      expect(new_company.id).to eq nil
      new_company.save
      expect(Company.all[0].id).to eq new_company.id
    end
  end

  describe 'remove' do
    it 'deletes a company' do
      new_company = Company.new({:name => 'Blue Cross'})
      new_company.save
      new_company.remove
      expect(Company.all).to eq []
    end

    it 'only deletes the company remove is called on' do
      new_company1 = Company.new({:name => 'Blue Cross'})
      new_company1.save
      new_company2 = Company.new({:name => 'Life Alert LLC'})
      new_company2.save
      new_company1.remove
      expect(Company.all).to eq [new_company2]
    end
  end
end

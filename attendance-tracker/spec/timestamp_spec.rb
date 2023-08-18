require 'spec_helper.rb'

describe 'TimeStamp' do
  it 'initializes with a user name' do
    new_timestamp = TimeStamp.new('Davey')
    expect(new_timestamp).to be_an_instance_of TimeStamp
  end

  it 'lets you read the user name' do
    new_timestamp = TimeStamp.new('Rhonda')
    expect(new_timestamp.user_name).to eq 'Rhonda'
  end

  it 'lets you read the recorded time' do
    new_timestamp = TimeStamp.new('Rhonda')
    expect(new_timestamp.time).to eq Time.now.strftime("%I:%M%p")
  end

  describe '.all' do
    it 'starts as an empty array' do
      expect(TimeStamp.all).to eq []
    end

    it 'shows all timestamps' do
      new_timestamp1 = TimeStamp.new('Gary')
      new_timestamp1.save
      new_timestamp2 = TimeStamp.new('Larry')
      new_timestamp2.save
      expect(TimeStamp.all).to eq [new_timestamp1, new_timestamp2]
    end
  end

  describe '.find' do
    it 'finds timestamps of a user' do
      new_timestamp1 = TimeStamp.new('Gary')
      new_timestamp1.save
      new_timestamp2 = TimeStamp.new('Larry')
      new_timestamp2.save
      new_timestamp3 = TimeStamp.new('Larry')
      new_timestamp3.save
      expect(TimeStamp.find("Larry")).to eq [new_timestamp2, new_timestamp3]
    end
  end

  describe 'save' do
    it 'saves a timestamp' do
      new_timestamp = TimeStamp.new('Gary')
      new_timestamp.save
      expect(TimeStamp.all[0]).to eq new_timestamp
    end
  end

  describe 'remove' do
    it 'deletes a timestamp' do
      new_timestamp = TimeStamp.new({})
      new_timestamp.save
      new_timestamp.remove
      expect(TimeStamp.all).to eq []
    end
  end
end

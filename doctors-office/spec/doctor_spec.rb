require 'spec_helper'


describe 'Doctor' do
  it 'initializes with a hash' do
    new_doctor = Doctor.new({:name => 'Franklin Jones'})
    expect(new_doctor).to be_an_instance_of Doctor
  end

  it 'lets you read the name' do
    new_doctor = Doctor.new({:name => 'Franklin Jones'})
    expect(new_doctor.name).to eq 'Franklin Jones'
  end

  describe '.all' do
    it 'starts as an empty array' do
      expect(Doctor.all).to eq []
    end
  end

  describe '.find_by_id' do
    it 'returns a doctor when given an id' do
      new_doctor = Doctor.new({:name => 'Franklin Jones'})
      new_doctor.save
      expect(Doctor.find_by_id(new_doctor.id)).to eq new_doctor
    end
  end

  describe '.find_by_name' do
    it 'returns a doctor when given a name' do
      new_doctor = Doctor.new({:name => 'Franklin Jones'})
      new_doctor.save
      expect(Doctor.find_by_name(new_doctor.name)).to eq new_doctor
    end
  end

  describe 'save' do
    it 'saves a doctor' do
      new_doctor = Doctor.new({:name => 'Franklin Jones'})
      new_doctor.save
      expect(Doctor.all).to eq [new_doctor]
    end

    it 'gives the doctor object an id' do
      new_doctor = Doctor.new({:name => 'Franklin Jones'})
      expect(new_doctor.id).to eq nil
      new_doctor.save
      expect(Doctor.all[0].id).to eq new_doctor.id
    end
  end

  describe 'remove' do
    it 'deletes a doctor' do
      new_doctor = Doctor.new({:name => 'Franklin Jones'})
      new_doctor.save
      new_doctor.remove
      expect(Doctor.all).to eq []
    end

    it 'only deletes the doctor remove is called on' do
      new_doctor1 = Doctor.new({:name => 'Franklin Jones'})
      new_doctor1.save
      new_doctor2 = Doctor.new({:name => 'Mary Winters'})
      new_doctor2.save
      new_doctor1.remove
      expect(Doctor.all).to eq [new_doctor2]
    end
  end
end

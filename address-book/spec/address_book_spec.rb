require 'rspec'
require 'address_book'

describe Contact do
  it 'is initialized by a name' do
    test_contact = Contact.new 'Jerry Lewis', '212-555-5785'
    expect(test_contact).to be_an_instance_of Contact
  end

  it 'returns the given name' do
    test_contact = Contact.new 'Jerry Lewis', '212-555-5785'
    expect(test_contact.name).to eq 'Jerry Lewis'
  end

  it 'returns the given phone number' do
    test_contact = Contact.new 'Jerry Lewis', '212-555-5785'
    expect(test_contact.phone_number).to eq '212-555-5785'
  end

  it 'returns an optional email address' do
    test_contact = Contact.new 'Jerry Lewis', '212-555-5785'
    test_contact.edit_email('smiley@gmail.com')
    expect(test_contact.email).to eq 'smiley@gmail.com'
  end

  it 'returns given address' do
    test_contact = Contact.new 'Jerry Lewis', '212-555-5785'
    test_contact.edit_address('123 Awesome Street')
    expect(test_contact.address).to eq '123 Awesome Street'
  end
end

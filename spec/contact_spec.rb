require 'rspec'
require 'contact'
require 'phones'
require 'emails'
require 'addresses'

describe Contact do
  before do
    Contact.clear
  end

  describe '#save' do
    it 'pushes a contact to all_contacts' do
      test_contact = Contact.new('joanne')
      test_contact.save
      Contact.all.should eq [test_contact]
    end
  end

  describe '.all' do
    it 'lists the contacts name' do
      test_contact = Contact.new('joanne')
      test_contact2 = Contact.new('ruby')
      test_contact.save
      test_contact2.save
      Contact.all.should eq [test_contact, test_contact2]
    end
  end

  describe '.clear' do
    it 'empties all the saved contacts' do
      Contact.new('joanne').save
      Contact.clear
      Contact.all.should eq []
    end
  end

  # it 'pulls a contact out of all_contacts and displays the associated information' do
  #   test_contact = Contact.new('joanne', '234234', 'j@1312', '123 Main St')
  #   test_contact2 = Contact.new('ruby', '23234', 'j@131232', '125 Main St')
  #   test_contact.save
  #   test_contact2.save
  #   Contact.all[0].all_info.should eq 'joanne, 234234, j@1312, 123 Main St'
  # end

  it 'is initialized with a name' do
    test_contact = Contact.new('joanne')
    test_contact.should be_an_instance_of Contact
  end
end

describe Phones do
  it 'is initialized with a phone number' do
    test_phone = Phones.new('4234234234')
    test_phone.should be_an_instance_of Phones
  end

  it 'retrieves a phone from a contact' do
    test_contact = Contact.new('joanne')
    test_contact.add_phone('325235235')
    test_contact.add_phone('3423626')
    test_contact.phones[0].phone.should eq '325235235'
  end
end

describe Emails do
  it 'is initialized with an email' do
    test_email = Emails.new('asdlgk@gmail.com')
    test_email.should be_an_instance_of Emails
  end

  it 'retrieves an email from a contact' do
    test_contact = Contact.new('joanne')
    test_contact.add_email('ddag@gmail.com')
    test_contact.emails[0].email.should eq 'ddag@gmail.com'
  end
end

describe Addresses do
  it 'is initialized with an address' do
    test_address = Addresses.new('4234234234')
    test_address.should be_an_instance_of Addresses
  end

  it 'retrieves an address from a contact' do
    test_contact = Contact.new('joanne')
    test_contact.add_address('3252 Main St.')
    test_contact.addresses[0].address.should eq '3252 Main St.'
  end
end







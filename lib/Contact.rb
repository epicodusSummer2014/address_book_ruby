require 'phones'
require 'emails'
require 'addresses'

class Contact
  @@all_contacts = []

  def initialize(name)
    @name = name
    @phones = []
    @emails = []
    @addresses = []
  end

  def Contact.clear
    @@all_contacts = []
  end

  def Contact.all
    @@all_contacts
  end

  def save
    @@all_contacts << self
  end

  def all_info
    "#{@name}\n#{@phone}\n#{@email}\n#{@address}"
  end

  def name
    @name
  end

  def phones
    @phones
  end

  def add_phone(user_phone)
    new_phone = Phones.new(user_phone)
    @phones << new_phone
  end

  def emails
    @emails
  end

  def add_email(user_email)
    new_email = Emails.new(user_email)
    @emails << new_email
  end

  def addresses
    @addresses
  end

  def add_address(user_address)
    new_address = Addresses.new(user_address)
    @addresses << new_address
  end
end

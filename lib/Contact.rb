require 'phones'

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
end

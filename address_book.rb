require './lib/contact'
require './lib/phones'
require './lib/emails'
require './lib/addresses'

def address_book
  loop do
    puts "Press 'c' to add a new contact"
    puts "Press 'l' to list contacts, 'd' to display contact details"
    puts "Press 'x' to exit"
    main_choice = gets.chomp
    if main_choice == 'c'
      add_contact
    elsif main_choice == 'l'
      list_contacts
    elsif main_choice == 'd'
      display_contact
    elsif main_choice == 'x'
      exit
    end
  end
end

def add_contact
  puts "enter contact name"
  input_name = gets.chomp
  Contact.new(input_name).save
end

def add_phone
  puts "which contact would you like to add a phone to?"
  list_contacts
  add_number = gets.chomp
  puts "enter a phone number"
  input_phone = gets.chomp
  new_phone = Phones.new(input_phone)
  new_phone.add_phone
  puts new_phone.

def list_contacts
  puts "Contact List:"
  Contact.all.each_with_index do |contact, index|
    puts index.to_s + '   ' + contact.name
  end
end

def display_contact
  puts "Display Contact Info"
  list_contacts
  puts "Which contact (number) would you like to see info for?"
  display_choice = gets.chomp.to_i
  puts Contact.all[display_choice].all_info
end
address_book

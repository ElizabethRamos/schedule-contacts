require_relative ('contact')

puts 
puts
puts 'Welcome to contacts Schedule'

contacts = []

def menu()
    puts 
    puts
    puts 
    puts '1 - Add a contact'
    puts '2 - See the contacts'
    puts '3 - Find a contact by name'
    puts '4 - Find a contact by e-mail'
    puts '5 - Find a contact by phone'
    puts '0 - Exit'
    puts
    puts
    puts
end

def receive_text()
    gets.chomp
end 

def add_contact(contacts)
    puts "Write the name: "
    name = receive_text()

    puts "Write the phone: "
    phone = receive_text()

    puts "Write the email: "
    email = receive_text()

    contact = Contact.new(name, phone, email)
    contacts << contact

    puts "Thanks for insert a contact"
end

def see_contacts(contacts)
    contacts.each do |contact|
        contact.print
    end
end

def find_contact_by_name(contacts, name)
    name_found = contacts.select do |contact|
        contact.has_this_name(name)
    end
    puts "Name not found" if contacts.empty?
    see_contacts name_found
end 

def find_contact_by_email(contacts, email)
    email_found = contacts.select do |contact|
        contact.has_this_email(email)
    end
    puts "Email not found" if contacts.empty?
    see_contacts email_found
end

def find_contact_by_phone(contacts, phone)
    phone_found = contacts.select do |contact|
        contact.has_this_phone(phone)
    end
    puts "Phone not found" if contacts.empty?
    see_contacts phone_found
end 
menu()

choose_option = gets.to_i

while choose_option !=0 do

    if(choose_option == 1)
        add_contact(contacts)

    elsif(choose_option == 2)
        see_contacts(contacts)

    elsif(choose_option == 3)
        puts "Write the name: "
        name = receive_text
        find_contact_by_name(contacts, name)
    elsif(choose_option == 4)
        puts "Write the email: "
        email = receive_text
        find_contact_by_email(contacts, email) 
    elsif(choose_option == 5)
        puts "Write the phone: "
        phone = receive_text
        find_contact_by_phone(contacts, phone)    
    end 
    menu()   
    choose_option = gets.to_i
end

puts "See ya!"


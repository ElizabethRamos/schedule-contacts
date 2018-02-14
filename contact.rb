# Contacts class
class Contact
  # constructor
  def initialize(name, phone, email)
    @name = name
    @phone = phone
    @email = email
  end

  # methods, actions and behaviors
  def print
    puts "Name: #{@name}\t, phone: #{@phone}\t, email: #{@email}"
  end

  def this_name(name)
    name.upcase.include? name.upcase
  end

  def this_email(email)
    email.upcase.include? email.upcase
  end

  def this_phone(phone)
    phone.upcase.include? phone.upcase
  end
end

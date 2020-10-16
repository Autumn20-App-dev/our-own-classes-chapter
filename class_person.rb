# Define a class Person with:

#  - An attribute first_name
#  - An attribute last_name
#  - An attribute birthdate (we just assign a string to this attribute, e.g. "April 19, 1987")
#  - An instance method, full_name, that puts first_name and last_name together
#  - An instance method, age, that calculates the number of years between today and birthdate

class Person
  # Must require date to use the Date class
  require("date")

  attr_accessor :first_name
  attr_accessor :last_name
  attr_accessor :birthdate

  def full_name()
    return "#{first_name} #{last_name}"
  end
  def age()
    today = Date.today
    birth = Date.parse(self.birthdate)
    age = today.year - birth.year
    return age
  end
end


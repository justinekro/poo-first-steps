class User
  attr_accessor :firstname, :lastname
  @@all = 0

  def self.all
    return @@all
  end

  def initialize(firstname, lastname)
    @firstname = firstname
    @lastname = lastname
    @@all += 1
  end

  def full_name
    return "#{@firstname.capitalize} #{@lastname.capitalize}"
  end
end

harry = User.new("Harry", "Potter")

ron = User.new("Ron", "Weasley")

draco = User.new("Draco", "Malfoy")

puts User.all
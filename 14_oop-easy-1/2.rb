class Pet
  attr_reader :name

  def initialize(name)
    @name = name.to_s
  end

  def to_s
    @name.upcase!
    "My name is #{@name}."
  end
end

name = 'Fluffy'
fluffy = Pet.new(name)
puts fluffy.name # => 'Fluffy'
puts fluffy # => "My name is FLUFFY"
puts fluffy.name # => "FLUFFY"
puts name # => 'Fluffy'. Actually, it's the same object. Therefore, it's FLUFFY
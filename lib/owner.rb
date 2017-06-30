require 'pry'

class Owner
  attr_accessor :pets, :name
  attr_reader :species
  attr_writer

  @@owners = []

  def initialize(pet)
    @pets = {fishes: [], cats: [], dogs: []}
    @species = "human"
    @@owners << self
  end

  def self.all
    @@owners
  end

  def self.reset_all
    @@owners.clear
  end

  def self.count
    @@owners.size
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    @pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    @pets.values.flatten.each {|pet| pet.mood = "nervous"}
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def list_pets
    fish_count = @pets.values[0].size
    dog_count = @pets.values[2].size
    cat_count = @pets.values[1].size
    "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end

end

# binding.pry

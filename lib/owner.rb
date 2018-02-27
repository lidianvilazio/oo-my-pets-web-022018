require "pry"

class Owner
  # code goes here

  attr_accessor :name, :pets, :fishes, :dogs, :cats
  attr_reader :species

  @@all = []
  @@count = 0

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @@count += 1
    @pets =  {:fishes=>[], :dogs=>[], :cats=>[]}
  end

  def self.all
    @@all
  end

  def self.count
    @@count
  end

  def self.reset_all
    @@count = 0
    @@all.clear
  end

  def say_species
    "I am a #{self.species}."
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
    @pets[:dogs].each {|i| i.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each {|i| i.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each {|i| i.mood = "happy"}
  end

  def sell_pets
    @pets.each do |k, v|
      v.each do |i|
         i.mood = "nervous"
        #  binding.pry
       end
       v.clear
    end
    # binding.pry
  end

  def list_pets
  "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end
  # binding.pry

end

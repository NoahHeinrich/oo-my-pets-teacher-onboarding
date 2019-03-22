class Owner
  # code goes here
  @@all = []
  attr_reader :species, :pets
  attr_accessor :name
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end
  def self.all 
    @@all
  end
  def self.count
    @@all.size
  end
  
  def self.reset_all
    @@all = []
  end
  
  def say_species
    "I am a #{self.species}."
  end
  
  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end
end
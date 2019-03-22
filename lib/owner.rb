class Owner
  # code goes here
  @@all = []
  attr_reader :species
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
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
end
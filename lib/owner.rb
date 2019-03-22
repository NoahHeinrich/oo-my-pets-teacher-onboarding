class Owner
  # code goes here
  @@all = []
  def initialize(name)
    @name = name
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
end
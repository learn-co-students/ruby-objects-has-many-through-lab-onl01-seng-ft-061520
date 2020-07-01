class Song 
  
  attr_accessor :name 
  attr_reader :genre, :artist 
  
  @@all = [] 
  
  def initialize(name)
    @name = name
    @genre = genre 
    @artist = artist
    @@all << self 
  end 
  
  def self.all 
    @@all
  end 
  
  def say_hi 
    puts "Hi"
  end 
  
end 
  
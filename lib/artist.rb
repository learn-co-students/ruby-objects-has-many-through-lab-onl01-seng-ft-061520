class Artist
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_song(song,new_genre)
    song = Song.new(song, self, new_genre)
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def genres
    self.songs.collect {|song| song.genre}
  end
  
  def self.all
    @@all
  end
end
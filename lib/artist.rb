class Artist

    attr_accessor :name, :genre

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
        @songs = []
    end


    def self.all 
        @@all
    end

    def new_song(name, genre) 
        Song.new(name, self, genre)
    end

    def genres  
        songs.map {|song| song.genre}
    end

    def songs
        @songs
    end

    def add_song(song)
        @songs << song 
        song.artist = self
    end





end

class Song 
    attr_accessor :name, :artist 
    @@all = [] 
    

    def initialize(name, artist = nil)
        @name = name 
        @artist = artist 
    end

    def self.all 
        @@all 
    end

    def self.destroy_all 
        @@all.clear 
    end 

    def save
        @@all << self
    end

    def self.create(song)
        new_song = Song.new(song)
        new_song.save 
        new_song
    end

    def artist=(artist)
        @artist = artist
        artist.add_song(self)
      end


end 
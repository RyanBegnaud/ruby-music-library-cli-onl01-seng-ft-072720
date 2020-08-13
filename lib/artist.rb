class Artist 
    attr_accessor :name, :song, :artist 
    @@all = [] 
    
    def initialize(name)
        @name = name 
        @songs = []
    end

    def songs 
        Song.all.each do |song|
            if song.artist = self 
                @songs << song 
            end
        end
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

    def self.create(artist)
        new_artist = Artist.new(artist)
        new_artist.save 
        new_artist
    end
    
    def add_song(song)
        song.artist = self unless song.artist
        songs << song unless songs.include?(song)
      end
end



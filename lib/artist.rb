class Artist
    @@all = []
    attr_accessor :name

    def self.all
        @@all
    end

    def initialize(name)
        self.name = name
        @@all << self
    end

    def new_song(title, genre)
        Song.new(title, self, genre)
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def genres
        genres = []
        Song.all.each do |song|
            genres << song.genre if song.artist == self
        end
        genres
    end
end
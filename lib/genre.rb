class Genre
    @@all = []
    attr_accessor :name

    def self.all
        @@all
    end

    def initialize(name)
        self.name = name
        @@all << self
    end

    def songs
        Song.all.select {|song| song.genre == self}
    end

    def artists
        artists = []
        Song.all.each do |song|
            artists << song.artist if song.genre == self
        end
        artists
    end
end
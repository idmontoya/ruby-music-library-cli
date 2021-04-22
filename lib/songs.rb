require "pry"
class Song
    extend Concerns::Findable
    attr_accessor :name, :artist
    @@all = []

    def initialize(name)
        @name = name
        self.artist = artist if !artist.nil?
    end

    def songs
        @songs
    end

    def self.all
        @@all
    end

    def save
        @@all << self
    end

    def self.destroy_all
        @@all = []
    end

    def self.create(name)
        song = self.new(name)
        song.save
        song
    end
    
end
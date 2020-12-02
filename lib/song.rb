
require 'pry'

class Song 

    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name 
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << @artist
        @@genres << @genre 
    end 

    def self.count 
        @@count
    end


    def self.artists
        @@artists.uniq
    end 

    def self.genres
        @@genres.uniq
    end 

    def self.genre_count
        hash = {}
        @@genres.each do |genre|
            hash[genre] ||= 0
            hash[genre] += 1
        end
        hash
    end

    def self.artist_count
        hash = {}
        @@artists.each do |artist|
            hash[artist] ||= 0
            hash[artist] += 1
        end 
        hash
    end 
end 



# Song
#   #new
#     takes in three arguments: a name, artist and genre
#   #name
#     has a name
#   #artist
#     has an artist
#   #genre
#     has a genre
#   class variables
#     has a class variable, @@count
#     has a class variable, @@artists, that contains all of the artists of existing songs
#     has a class variable, @@genres, that contains all of the genres of existing songs
#   .count
#     is a class method that returns that number of songs created
#   .artists
#     is a class method that returns a unique array of artists of existing songs
#   .genres
#     is a class method that returns a unique array of genres of existing songs
#   .genre_count
#     is a class method that returns a hash of genres and the number of songs that have those genres
#   .artist_count
#     is a class method that returns a hash of artists and the number of songs that have those artists

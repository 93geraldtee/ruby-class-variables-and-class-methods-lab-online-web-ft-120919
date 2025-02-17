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
        @@count +=1
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
        genre_hash = {}
        @@genres.each do |genre|
=begin
            if genre hash has a key of this genre
                increase the count by one
             else (genre hash does not know about this genre key yet)
                create that key and start the value off at 1
             end
=end
            # binding.pry
            if genre_hash[genre]
                genre_hash[genre] += 1
            else 
                genre_hash[genre] = 1
            end #if
        end #do
        genre_hash
    end #def


    def self.artist_count
        artist_hash = {}
        @@artists.each do |artist| 
            if artist_hash[artist]
                artist_hash[artist] += 1
            else
                artist_hash[artist] = 1
            end
        end
        artist_hash
    end


end
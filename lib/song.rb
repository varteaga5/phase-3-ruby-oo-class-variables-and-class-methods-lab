class Song
    attr_accessor :name, :artist, :genre
    # class variable
    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name

        @artist = artist
        @@artists << artist

        @genre = genre
        @@genres << genre

        @@count += 1
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
        # genre hash and count
        genre_hash = {}
        # iterate over @@genres arr
        @@genres.each do |genres|
            # check to see if hash already contains a key of a particular genre
            # if true increment value of that key by 1
            if genre_hash.has_key?(genres)
                genre_hash[genres] += 1
            else # otherwise create a new key/val pair
                genre_hash[genres] = 1
            end
        end
        genre_hash
        
    end

    def self.artist_count
        # genre hash and count
        artist_hash = {}
        # iterate over @@genres arr
        @@artists.each do |artists|
            # check to see if hash already contains a key of a particular genre
            # if true increment value of that key by 1
            if artist_hash.has_key?(artists)
                artist_hash[artists] += 1
            else # otherwise create a new key/val pair
                artist_hash[artists] = 1
            end
        end
        artist_hash
        
    end

end
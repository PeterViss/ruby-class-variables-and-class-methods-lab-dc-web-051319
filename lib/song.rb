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
      @@artists << artist
      @@genres << genre
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
      if hash[genre]
        hash[genre] += 1
      else
        hash[genre] = 1
      end
    end
    hash
  end

  def self.artist_count
    hasher = {}
    @@artists.each do |artist|
      if hasher[artist]
        hasher[artist] += 1
      else
        hasher[artist] = 1
      end
    end
    hasher
  end
end

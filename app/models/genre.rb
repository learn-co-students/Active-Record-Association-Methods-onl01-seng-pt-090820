require 'pry'
class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.count# return the number of songs in a genre
  end

  def artist_count
    self.artists.count# return the number of artists associated with the genre
  end

  def all_artist_names
    array_of_artists = []
    array_of_artists << self.artists[0].name
    array_of_artists << self.artists[1].name
    array_of_artists << self.artists[2].name
  end
end

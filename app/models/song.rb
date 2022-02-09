class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    drake_id = (Artist.find_by(name: "Drake") || Artist.create(name: "Drake")).id
    self.update(artist_id: drake_id)
  end
end

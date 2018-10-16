class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    drake = create(name: "Drake")
    self.artist.update(name: "Drake")
  end
end

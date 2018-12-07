class Episode < ApplicationRecord
  has_many :appearances
  has_many :guests, :through => :appearances
end


#A guest can have many appearances, and an episode can have many appearances. An appearance belongs to a guest, and an episode.

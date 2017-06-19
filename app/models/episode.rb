class Episode < ApplicationRecord
  has_many :episode_guests
  has_many :guests, through: :episode_guests
end

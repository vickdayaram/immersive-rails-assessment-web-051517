class Guest < ApplicationRecord
  has_many :episode_guests
  has_many :episodes, through: :episode_guests
end

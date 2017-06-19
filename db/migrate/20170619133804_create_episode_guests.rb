
#I realized this should be called appearance, but for the sake of
#time I just kept this name.

class CreateEpisodeGuests < ActiveRecord::Migration[5.0]
  def change
    create_table :episode_guests do |t|
      t.integer :rating
      t.references :episode
      t.references :guest
      t.timestamps
    end
  end
end

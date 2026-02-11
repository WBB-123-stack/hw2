class CreateMovieCasts < ActiveRecord::Migration[8.1]
  def change
    create_table :movie_casts do |t|
      t.timestamps
      t.string "actor_name"
      t.string "character_played"
      t.string "movie_title"
    end
  end
end

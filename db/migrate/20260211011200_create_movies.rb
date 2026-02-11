class CreateMovies < ActiveRecord::Migration[8.1]
  def change
    create_table :movies do |t|
      t.timestamps
      t.string "movie_title"
      t.string "year_released"
      t.string "studio"
      t.integer "MPAA_rating"
    end
  end
end

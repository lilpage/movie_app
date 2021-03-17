class AddMovieToActor < ActiveRecord::Migration[6.1]
  def change
    add_column :actors, :movie_id, :integer
  end
end

class CreateActors < ActiveRecord::Migration[6.1]
  def change
    create_table :actors do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :gender
      t.string :known_for
      t.integer :movie_id

      t.timestamps
    end
  end
end

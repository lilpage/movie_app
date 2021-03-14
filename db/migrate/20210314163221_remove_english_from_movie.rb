class RemoveEnglishFromMovie < ActiveRecord::Migration[6.1]
  def change
    remove_column :movies, :english, :string
  end
end

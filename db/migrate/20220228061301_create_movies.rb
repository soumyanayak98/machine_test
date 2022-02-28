class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :name, null: false
      t.string :a_u
      t.string :genre
      t.string :format
      t.timestamps
    end
  end
end

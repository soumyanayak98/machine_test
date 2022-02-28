class CreateTheaters < ActiveRecord::Migration[7.0]
  def change
    drop_table :theaters
    create_table :theaters do |t|
      t.string :name, null: false
      t.string :city_name, null: false;
      t.integer :seats
      t.timestamps
    end
  end
end

class CreateShowTime < ActiveRecord::Migration[7.0]
  def change
    create_table :show_times do |t|
      t.references :theater
      t.references :movie
      t.time :timing
      t.date :date
      t.timestamps
    end
  end
end

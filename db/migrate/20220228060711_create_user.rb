class CreateUser < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.boolean :admin, default: false
      t.string :password, null: false
      t.timestamps
    end
  end
end

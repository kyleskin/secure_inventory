class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.string :room
      t.decimal :puchase_price, precision: 8, scale: 2

      t.timestamps null: false
    end
  end
end

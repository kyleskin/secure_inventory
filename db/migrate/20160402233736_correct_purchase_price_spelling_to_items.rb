class CorrectPurchasePriceSpellingToItems < ActiveRecord::Migration
  def change
    remove_column :items, :puchase_price, :decimal
    add_column :items, :purchase_price, :decimal, precision: 8, scale: 2
  end
end

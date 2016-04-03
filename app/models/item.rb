class Item < ActiveRecord::Base
  validates :name, :description, :room, presence: true
  validates :purchase_price, numericality: true
end

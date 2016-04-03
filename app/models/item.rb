class Item < ActiveRecord::Base
  belongs_to :user
  validates :name, :description, :room, presence: true
  validates :purchase_price, numericality: true, allow_nil: true
end

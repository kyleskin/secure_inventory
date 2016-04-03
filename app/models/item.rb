class Item < ActiveRecord::Base
  belongs_to :user
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  validates :name, :description, :room, presence: true
  validates :purchase_price, numericality: true, allow_nil: true
end

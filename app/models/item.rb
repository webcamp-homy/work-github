class Item < ApplicationRecord
  belongs_to :admin
  belongs_to :category
  has_many :post_images, dependent: :destroy
  enum item_status: {
     "販売中":0, "販売停止中":1,
  }

end

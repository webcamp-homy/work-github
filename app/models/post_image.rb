class PostImage < ApplicationRecord
  belongs_to :item
  attachment :image 
end

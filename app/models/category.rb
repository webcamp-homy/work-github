class Category < ApplicationRecord
  belongs_to :admin
  ha :item
end

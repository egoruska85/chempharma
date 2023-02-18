class Product < ApplicationRecord
  belongs_to :country
  belongs_to :manufacturer
  has_one_attached :image
  has_many_attached :images
end

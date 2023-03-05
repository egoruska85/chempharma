class Product < ApplicationRecord
  belongs_to :country
  belongs_to :manufacturer
  belongs_to :category
  has_one_attached :image
  has_many_attached :images
end

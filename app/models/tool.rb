class Tool < ApplicationRecord
  belongs_to :user

  validates :name, :brand, :price, :category, :description, presence: true
  validates :price, numericality: true
  mount_uploader :photo, PhotoUploader
end

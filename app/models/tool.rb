class Tool < ApplicationRecord
  belongs_to :user

  validates :name, :price, :category, :description, presence: true
  validates :price, numericality: { only_integer: true }
  mount_uploader :photo, PhotoUploader
end

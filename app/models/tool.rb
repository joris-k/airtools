class Tool < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  validates :name, :brand, :price, :category, :description, presence: true
  validates :price, numericality: true
  mount_uploader :photo, PhotoUploader
end

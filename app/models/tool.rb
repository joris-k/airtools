class Tool < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :name, :brand, :price, :category, :description, presence: true
  validates :price, numericality: true
  mount_uploader :photo, PhotoUploader
end

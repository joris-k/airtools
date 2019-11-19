class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :tool
  # has_one :user, through: :tool

  validates :confirmation, acceptance: true
  validates :dates, presence: true
end

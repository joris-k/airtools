class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :tool

  validates :confirmation, acceptance: true
  validates :dates, presence: true
end

class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :tool

  validates :confirmation, acceptance: true
  validates :start_date, presence: true
  validates :end_date, presence: true
end

class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :tool
  # has_one :user, through: :tool
  has_many :notifications, dependent: :destroy
  validates :dates, presence: true

  def self.own_bookings(user)
    self.where(user: user)
  end

  def self.own_tool_bookings(user)
    user_tools = Tool.where(user: user)
    bookings = []
    user_tools.each do |tool|
      booking_list = self.where(tool: tool)
      if !booking_list.blank?
        booking_list.each { |individual_booking| bookings << individual_booking}
      end
    end
    bookings
  end

  def dates_to_array
    dates_array = self.dates.to_s.gsub(/\[|\]/,"").gsub(/\"/, "").split(",")
    dates_array.map! { |date| Date.parse(date) }
  end
end

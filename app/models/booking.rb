class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :tool
  # has_one :user, through: :tool

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
end

class BookingsController < ApplicationController
  before_action :set_booking, except: []

  private

  def set_tool
    @Booking = Booking.find(params[:id])
  end
end

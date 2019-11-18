class BookingsController < ApplicationController
  before_action :set_booking, except: [:index]

  def index
    @bookings = Booking.all
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end
end

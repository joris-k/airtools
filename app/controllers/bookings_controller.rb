class BookingsController < ApplicationController
  before_action :set_booking, except: [:index]

  def index
    @bookings = policy_scope(Booking)
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
    authorize @booking
  end
end

 class BookingsController < ApplicationController
  before_action :set_booking, only: []

  def index
    @bookings = policy_scope(Booking)
    @own_bookings = Booking.own_bookings(current_user)
    @user_tool = Booking.own_tool_bookings(current_user)
  end

  def show
    @booking = Booking.find(params[:id])
    authorize @booking
    @tool = @booking.tool
  end

  def create
    @tool = Tool.find(params[:tool_id])
    datesArray = params[:booking][:dates].split(' to ')
    @booking = Booking.new(bookings_params)
    @booking.user = current_user
    @booking.tool = @tool
    @booking.dates = datesArray
    if @booking.save
      # redirect_to tool_path(@tool)
      redirect_to booking_path(@booking)
    else
      render :new
    end
    authorize @booking
  end

  def new
    @tool = Tool.find(params[:tool_id])
    @booking = Booking.new
    authorize @booking
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def bookings_params
    params.require(:booking).permit(:comment, :pickup_time)
  end
end

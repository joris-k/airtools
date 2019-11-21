 class BookingsController < ApplicationController
  before_action :set_booking, only: [:update]

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
    @booking = Booking.new(bookings_params)
    if params[:booking][:dates] != ""
      @booking.dates = params[:booking][:dates].split(' to ')
      if @booking.dates_to_array.length == 1
        @booking.dates = "[#{@booking.dates_to_array[0].to_s}, #{@booking.dates_to_array[0].to_s}]"
      end
    end
    @booking.user = current_user
    @booking.tool = @tool
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

  def update
    booking_data = bookings_params
    if booking_data["confirmation"] == "true"
      @booking.confirmation = true
    else
      @booking.confirmation = false
    end
    @booking.save
    redirect_to @booking
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def bookings_params
    params.require(:booking).permit(:comment, :pickup_time, :confirmation)
  end
end

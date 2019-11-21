class NotificationsController < ApplicationController
  def update
    @notification = Notification.find(params[:id])
    @notification.read = true
    @notification.save
    authorize @notification
    redirect_to booking_path(@notification.booking)
  end
end

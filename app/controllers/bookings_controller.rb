class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @booking.user_id = current_user.id
    @booking.space_id = 6 #params[space.id]
    @booking_new = @booking.save!
    #Booking.create(user_id: current_user, space_id: 6)
    redirect_to booking_path(Booking.last.id)
  end

  def create
    @booking.save
  end

  def show
    @booking_show = Booking.find(params[:id])
    @space_booked = @booking_show.space
  end

  def index
    @bookings_user = Booking.where(user_id: current_user)
  end

private


end

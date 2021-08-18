class BookingsController < ApplicationController
  def new
    # @booking = Booking.new
    # @booking.user_id = current_user.id
    # @booking.space_id = 6 #params[space.id]
    # @booking_new = @booking.save!
    # @booked = Booking.new(user_id: current_user, space_id: params[space.id])
    # raise
    # @booking.save
    # redirect_to booking_path(@booked.id)
  end

  def create
    @booked = Booking.new(spa_params)
    @booked.user = current_user
    @booked.save!
    redirect_to booking_path(@booked.id)
   end

  def show
    @booking_show = Booking.find(params[:id])
    @space_booked = @booking_show.space
  end

  def index
    @bookings_user = Booking.where(user_id: current_user)
  end

  
  private

  def spa_params
    params.require(:booking).permit(:space_id)
  end

end

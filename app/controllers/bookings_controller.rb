class BookingsController < ApplicationController
  def new
    # @booking = Booking.new
    # @booking.user_id = current_user.id
    # @booking.space_id = 6 #params[space.id]
    # @booking_new = @booking.save!
    @booked = Booking.create(user_id: current_user, space_id: params[space.id])
    redirect_to booking_path(@booked.id)
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

  def article_params
    params.require(:article).permit(:title, :body, :photo)
  end

end

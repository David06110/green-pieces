class SpacesController < ApplicationController
  before_action :authenticate_user!

  #include Pundit
  #before_action :find_space, only: [:show, :edit, :update, :destroy]

  def index
    @spaces = Space.all
      @markers = @spaces.geocoded.map do |space|
      {
        lat: space.latitude,
        lng: space.longitude,
        info_window: render_to_string(partial: "info_window", locals: { space: space }),
        #image_url: helpers.asset_url('REPLACE_THIS_WITH_YOUR_IMAGE_IN_ASSETS')
      }
    end

  end
end

  def show
    @space = Space.find(params[:id])
    @booking = Booking.new
    @bookings_dates = @bookings.map do |booking|
      {
        from: booking.check_in,
        to: booking.check_out
      }
    end 
  end

  def new
    @space = Space.new
  end

  def create
    @space = Space.new(space_params)
    @space.user = current_user
    @space.save!
    redirect_to space_path(@space.id)
  end

  def edit
  @space = Space.find(params[:id])
  end

  def update
    @space = Space.find(params[:id])
    @space.update(space_params)
    redirect_to space_path(@space)
  end

  #def destroy
   # @space = Space.find(params[:id])
   # @space.destroy
   # redirect_to space_path(@space)
  #end
  #end

private
  def space_params
   params.require(:space).permit(:name, :style, :price, :check_in, :check_out)
  end

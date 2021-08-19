class SpacesController < ApplicationController
  before_action :authenticate_user!

  before_action :find_space, only: [:show, :edit, :update, :destroy]
  before_action :new_space, only: :new
  def index

    if params[:query]
      @spaces = Space.where(style: params[:query])
    else
      @spaces = Space.all
    end
    @markers = @spaces.geocoded.map do |space|
    {
      lat: space.latitude,
      lng: space.longitude,
      info_window: render_to_string(partial: "info_window", locals: { space: space })
    }

    @bookings = Booking.all
    end
      #image_url: helpers.asset_url('REPLACE_THIS_WITH_YOUR_IMAGE_IN_ASSETS')
      @bookings = Booking.all


  end

  def show
    @booking = Booking.new

    # @space_dates = @space.map do |date|
    #   {
    #     from: date.check_in,
    #     to: date.check_out
    #   }
    # end 

  end

  def new
    
  end

  def create
    @space = Space.new(space_params)
    @space.user = current_user
    @space.check_in = Date.parse(@space.check_in).strftime("%d/%m/%Y")
    @space.check_out = Date.parse(@space.check_out).strftime("%d/%m/%Y")
    @space.save!
    redirect_to space_path(@space.id)
  end

  def edit
  end

  def update
    @space.update(space_params)
    redirect_to space_path(@space)
  end

  #def destroy
   # @space.destroy
   # redirect_to space_path(@space)
  #end
  #end

private
  def space_params
   params.require(:space).permit(:name, :style, :price, :check_in, :check_out)
  end

  def find_space
    @space = Space.find(params[:id])
  end

  def new_space
    @space = Space.new()
  end

end

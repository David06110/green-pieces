class SpacesController < ApplicationController
  before_action :authenticate_user!
  #include Pundit
  #before_action :find_space, only: [:show, :edit, :update, :destroy]
  
  def index
    @spaces = Space.all
    @bookings = Booking.all
  end

  def show
    @space = Space.find(params[:id])
    @booking = Booking.new
    # @space_dates = @space.map do |date|
    #   {
    #     from: date.check_in,
    #     to: date.check_out
    #   }
    # end 
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

end
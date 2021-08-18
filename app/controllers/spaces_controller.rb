class SpacesController < ApplicationController
  before_action :authenticate_user!
  #include Pundit
  #before_action :find_space, only: [:show, :edit, :update, :destroy]
  
  def index
    @spaces = Space.all
  end

  def show
    @space = Space.find(params[:id])
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
    @space.update(params[:space])
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
   params.require(:space).permit(:name, :type_of, :price, :check_in, :check_out)
  end

end
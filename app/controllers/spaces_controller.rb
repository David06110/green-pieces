class SpacesController < ApplicationController
  before_action :find_space, only: [:show, :edit, :update, :destroy]
  
  def index
    @spaces = Space.all
  end

  def show
  #@spaces = @spaces.find { |space| space["id"]== params[ :id].to_i}
  end

  def new
    @spaces = Space.new
  end

  def create
    @spaces = Space.new(params[:space])
    @spaces.save
    redirect_to space_path(@space)
  end

  def edit
  #@space = Space.find(params[:id])
  end

  def update
  # @space = Space.find(params[:id])
    @space.update(params[:space])
    redirect_to space_path(@space)
  end

  def destroy
  # @space = Space.find(params[:id])
    @space.destroy
    redirect_to space_path(@space)
  end
end


private 
  def space_params
    params.require(:space).permit(:name, :type, :price, :check-in, :check-out)
  end

class DoctorsController < ApplicationController
  def index
    @doctors = Doctor.all
  end

  def new
    
  end
  
  def show
    @doctor = Doctor.find(params[:id])
  end

  def create

  end

  def edit
   
  end

  def update

  end
end

  # def destroy
  #   @artist = Artist.find(params[:id])
  #   @artist.destroy
  #   flash[:notice] = "Artist deleted."
  #   redirect_to artists_path
  # end



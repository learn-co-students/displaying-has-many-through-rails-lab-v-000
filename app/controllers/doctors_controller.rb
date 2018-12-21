class DoctorsController < ApplicationController
  def index
    @docs = Doctor.all
  end

  def show
    @doc = Doctor.find(params[:id])
  end


  
  

end

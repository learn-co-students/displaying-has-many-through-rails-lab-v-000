class DoctorsController < ApplicationController

  def show
    @doctor = Doctor.find(params[:id])
    binding.pry
  end

end

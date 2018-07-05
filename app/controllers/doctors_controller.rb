class DoctorsController < ApplicationController

  def show
    @dr = Doctor.find(params[:id])
  end

end

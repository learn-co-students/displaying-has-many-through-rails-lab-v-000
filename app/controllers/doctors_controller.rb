class DoctorsController < ApplicationController

  def show
    @dr = Doctor.find_by(id: params[:id])
  end
end

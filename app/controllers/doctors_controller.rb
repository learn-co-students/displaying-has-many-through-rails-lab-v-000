class DoctorsController < ApplicationController
  include DoctorsHelper

  def show
    @doctor = Doctor.find(params[:id])
    add_full_dates(@doctor)
  end
end

class DoctorsController < ActiveRecord::Base

  def index
    @doctors = Doctor.all
  end

  def show
    @doctor = Doctor.find(:id)
  end

end

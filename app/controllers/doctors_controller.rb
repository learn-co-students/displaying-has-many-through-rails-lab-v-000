class DoctorsController < ApplicationController

  def index
    @doctors = Doctor.all
  end
end

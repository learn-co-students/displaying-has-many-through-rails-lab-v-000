class DoctorsController < ApplicationController

  def index
    @doctors = Doctor.all
    binding.pry
  end

end

class DoctorsController < ApplicationController
  def index
  end

  def show
  end

  def create
    @doctor = Doctor.create(params)
  end
end

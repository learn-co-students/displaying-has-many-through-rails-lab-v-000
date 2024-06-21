class DoctorsController < ApplicationController

  def show
    @doc = Doctor.find(params[:id])
  end

end

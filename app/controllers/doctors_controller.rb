class DoctorsController < ApplicationController

  def index
    @doctors = Doctor.all
  end

  def show
    @doctor = Doctor.find(params[:id])
  end



  helpers do
    def convert_datetime(datetime)
      binding.pry
      datetime.strftime("%b, %d, %Y at %l:%M")

    end
  end
end

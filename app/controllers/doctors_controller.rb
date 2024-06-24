class DoctorsController < ActionController::Base
  def show
    @doctor = Doctor.find(params[:id])
  end
end

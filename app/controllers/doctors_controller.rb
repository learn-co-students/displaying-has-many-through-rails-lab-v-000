class DoctorsController < ApplicationController
  def show
      @doctor = Doctor.find(params[:id])
      if @doctor.appointments.last.try(:name)
        @recipe.appointments.build
      end
    end

    def index
      @doctors = Doctor.all
    end

    private

    def doctor_params
      params.require(:doctor).permit(:name, :department)
    end
end

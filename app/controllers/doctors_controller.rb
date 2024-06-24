class DoctorsController < ApplicationController


  def index
    @doctors = Doctor.all
  end


  def show
    @doctors = Doctor.all
    @doctor = Doctor.find(params[:id])
    render :show
  end


    def create
      @doctor = Doctor.new(doctor_params)

      if @doctor.save
        redirect_to @doctor
      else
        render :new
      end
    end

    private

    def doctor_params
      params.require(:doctor).permit(:name, :department)
    end

end

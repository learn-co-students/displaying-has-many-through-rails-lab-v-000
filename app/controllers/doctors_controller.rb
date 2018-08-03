class DoctorsController < ApplicationController
    def index
        @doctors = Doctor.all
    end

    def new
        @doctor = Doctor.new
    end

    def show
        @doctor = Doctor.find(params[:id])
    end

    def create
        @doctor = Doctor.create(doctor_params)
        @doctor.appointments.build
        @doctor.patients.build
        redirect_to doctor_path
    end

    private

    def doctor_params
        params.require(:doctor).permit(:name, :department, :appointments_attributes [:appointment_datetime], :patients_attributes [:name, :age])
    end
end
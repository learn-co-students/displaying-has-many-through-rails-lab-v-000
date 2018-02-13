class DoctorsController < ApplicationController

      def show
        @doctor = Doctor.find(params[:id])
      end

      def index
        @doctors = Doctor.all
      end

      def new
        @doctor = Doctor.new
      end

      def create
        @doctor = Doctor.new(doctor_params)
        @doctor.save
        redirect_to @doctor
      end
    end

    private

    def doctor_params
         params.require(:doctor).permit(:name, :email, :appointment_id)
    end

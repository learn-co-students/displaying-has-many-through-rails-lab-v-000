class DoctorsController < ApplicationController

    def index
        @doctors = Doctor.all
    end

    def show
        doctor_params
    end

    private
      def doctor_params
        @doctor = Doctor.find(params[:id])
      end
end

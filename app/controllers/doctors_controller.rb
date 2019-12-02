class DoctorsController < ApplicationController
    
    def show
        find_doctor
    end

    private

    def find_doctor
        @doctor = Doctor.find(params[:id])
    end
end

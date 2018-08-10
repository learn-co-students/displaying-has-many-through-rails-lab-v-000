class DoctorsController < ApplicationController


    def show
        @doctor = Doctor.find_by_id(params[:id])
    end 

    def index 
        @doctors = Doctor.all 
    end 

end

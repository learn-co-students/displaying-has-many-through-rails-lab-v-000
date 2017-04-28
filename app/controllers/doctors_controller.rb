class DoctorsController < ApplicationController
    def show 
        @doctor = Doctor.all.find(params[:id])
    end 
    
end

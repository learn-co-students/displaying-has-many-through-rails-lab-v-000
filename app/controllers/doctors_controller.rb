class DoctorsController < ApplicationController

    def show
        @doctor = Doctor.find(params[:id])
    end


    def index
        @doctor = Doctor.all
    end
end

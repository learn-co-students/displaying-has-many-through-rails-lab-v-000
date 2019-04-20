class DoctorsController < ApplicationController

    def index
        @doctors = Doctor.all 
    end

    def show
        set_dr
    end





    private

    def set_dr
        @dr = Doctor.find(params[:id])
    end
end

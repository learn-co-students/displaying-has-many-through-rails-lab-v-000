class DoctorsController < ApplicationController

    def index   
        @doctors = Doctor.all
      end
  
      def show
      @doctor = Doctor.find(params[:id])
      ##https://foragoodstrftime.com/ needed for strftime
      end
end

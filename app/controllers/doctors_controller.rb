class DoctorsController < ApplicationController

def index
   @doctors = Doctor.all
 end

def show
   @doctors = Doctor.find(params[:id])
 end
end

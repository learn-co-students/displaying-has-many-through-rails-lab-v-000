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



end

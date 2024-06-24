require "pry"
class  PatientsController < ApplicationController
    def index
        @patients = Patient.all
    end

    def new
         @patient = Patient.new
    end

    def create
        binding.pry
    end

    def show
        @patient = Patient.find(params[:id])
    end

end
# Date.parse(appointment.appointment_datetime).strftime("%B %d, %Y")

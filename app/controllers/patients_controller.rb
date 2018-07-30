class PatientsController < ApplicationController
    def index
        @patients = Patient.all
    end

    def show
        @patient = Patient.find(params[:id])
        @appts = @patient.appointments
    end
end
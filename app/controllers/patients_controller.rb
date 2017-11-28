class PatientsController < ApplicationController

    before_action :set_patients, only: [:show]

    def show

    end

    def index
        @patients = Patient.all
    end

    private
    def set_patients
        @patient = Patient.find_by(id: params[:id])
    end

end

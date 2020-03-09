class PatientsController < ApplicationController
    before_action :find_id, only: [:show]

    def index
        @patients = Patient.all
    end

    def show
    end

    private

    def find_id
        @patient = Patient.find(params[:id])
    end

    def patient_params
        params.require(:patient).permit(:name, :age)
    end
end
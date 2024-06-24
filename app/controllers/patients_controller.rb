class PatientsController < ApplicationController

      def show
        @patient = Patient.find(params[:id])
      end

      def index
        @patients = Patient.all
      end

      def new
        @patient = Patient.new
      end

      def create
        @patient = patient.new(patient_params)
        @patient.save
        redirect_to @patient
      end
    end

    private

    def patient_params
         params.require(patient).permit(:name, :age, :appointment_id)
    end

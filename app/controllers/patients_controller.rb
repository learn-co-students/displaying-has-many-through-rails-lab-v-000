class PatientsController < ApplicationController
    def index
        @patients = Patient.all
    end

    def show
        @patient = Patient.find(params[:id])
        @appointments = []
        @patient.appointment_ids.each do |appointment|
            @appointments << Appointment.find_by(patient_id: @patient.id)
        end
    end
end

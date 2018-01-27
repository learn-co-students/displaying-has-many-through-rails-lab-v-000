class AppointmentsController < ApplicationController

    def index
        @appointments = Appointment.all
    end

    def show
        @appointment = Appointment.find(params[:id])
        @doctor = Doctor.find_by(id: @appointment.doctor_id)
        @patient = Patient.find_by(id: @appointment.patient_id)
    end
end

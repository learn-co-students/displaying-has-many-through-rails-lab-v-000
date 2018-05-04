class AppointmentsController < ApplicationController

    def show
        @appmt = Appointment.find_by(id: params["id"])
        @patient = Patient.find_by(id: @appmt.patient_id)
        @doctor = Doctor.find_by(id: @appmt.doctor_id)
    end
end
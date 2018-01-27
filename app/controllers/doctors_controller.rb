class DoctorsController < ApplicationController
    def index
        @doctors = Doctor.all
    end

    def show
        @doctor = Doctor.find_by(params[:id])
        @appointments = []
        @doctor.appointment_ids.each do |appointment|
            @appointments << Appointment.find_by(doctor_id: @doctor.id)
        end
    end
end

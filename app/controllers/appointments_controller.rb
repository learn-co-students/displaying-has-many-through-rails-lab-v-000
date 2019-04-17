class AppointmentsController < ApplicationController

    def show 
        @appointment = Appointment.find(params[:id])
        @doctor = @appointment.doctor
        @patient = @appointment.patient
        @time = @appointment.appointment_datetime.strftime("%I:%M %P")
        @date = @appointment.appointment_datetime.strftime("%Y-%m-%d")
    end 
end

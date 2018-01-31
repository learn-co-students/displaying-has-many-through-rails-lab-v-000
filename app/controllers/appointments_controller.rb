class AppointmentsController < ApplicationController
    def show 
         @appointment = Appointment.all.find(params[:id])
    end 
end

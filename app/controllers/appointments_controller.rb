class AppointmentsController < ApplicationController
    
    def index
        @appointment = Appointment.all
    end
    
    def show
       @appointment = Appointment.find(params[:id])
    end
end

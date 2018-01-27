class AppointmentsController < ApplicationController

    def index
        not_found
    end 
    
    def show
        @appointment = Appointment.find(params[:id]) 
    end 
end

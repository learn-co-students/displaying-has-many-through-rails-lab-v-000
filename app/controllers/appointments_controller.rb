class AppointmentsController < ApplicationController

    def new 
    end 

    def create 
    end 

    def show
        @appointment = Appointment.find_by_id(params[:id])
    end 

end

class AppointmentsController < ApplicationController
    
    def show 
        @appointment = Appointment.find_by(params[:id])
    end
    
    def index
        raise ActionController::RoutingError.new("Not allowed")
    end 
end

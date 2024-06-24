class AppointmentsController < ApplicationController

    def index
        raise ActionController::RoutingError.new(params[:path])
    end
    
    def show
        set_appointment
    end




    private

    def set_appointment
        @appointment = Appointment.find(params[:id])
    end
end

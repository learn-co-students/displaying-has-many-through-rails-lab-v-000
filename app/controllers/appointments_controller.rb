class AppointmentsController < ApplicationController
    def index
        not_found
    end

    def new
    end

    def show
        @appointment = Appointment.find_by(:id => params[:id])
    end

    def create
    end

    def update
    end
    
    def destroy
    end    

    private
    def not_found
        raise ActionController::RoutingError.new("not found")
    end        
end


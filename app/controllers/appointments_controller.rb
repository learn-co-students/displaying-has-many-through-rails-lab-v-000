class AppointmentsController < ApplicationController
    def index
        @appointments = Appointment.all
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
end

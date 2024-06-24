class AppointmentsController < ApplicationController
    def index
        @appointments = Appointment.all
    end

    def new 
        @appointment = Appointment.new
    end

    def show
        @appointment = Appointment.find(params[:id])
    end

    def create
        @appointment = Appointment.create(appointment_params)
        
        redirect_to appointment_path
    end

    private

    def appointment_params
        params.require(:appointment).permit(:appointment_datetime)
    end
end
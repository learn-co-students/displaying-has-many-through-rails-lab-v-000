class ApplicationController < ActionController::Base
    def show
        @appointment = Appointment.find(params[:id])
    end
end
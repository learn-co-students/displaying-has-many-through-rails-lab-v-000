class AppointmenTsController < ApplicationController
    def show
    @appointment = Appointment.find(params[:id])
    end
end

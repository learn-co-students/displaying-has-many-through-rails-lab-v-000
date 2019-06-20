class AppointmentsController < ApplicationController

    def show
        # byebug
        @appointment = Appointment.find(params[:id])
    end
end

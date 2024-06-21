class AppointmentsController < ApplicationController
    def index
        @appointments = Appointment.all
    end

    def show
        @appointment = Appointment.find(params[:id])
    end

    def new
        @appointment = Appointment.new
    end

    def create

    end

    def edit

    end

    def update

    end
end

class AppointmentsController < ApplicationController
    before_action :get_appointment_data, only: [:show]

    def show

    end

    private

    def get_appointment_data
        @appointment = Appointment.find(params[:id])
    end

end
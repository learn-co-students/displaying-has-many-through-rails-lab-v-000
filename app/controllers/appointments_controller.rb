class AppointmentsController < ApplicationController
    def show
        appointment_params
    end

    private
      def appointment_params
        @appointment = Appointment.find(params[:id])
      end
end

class AppointmentsController < ApplicationController

      def show
        @appointment = Appointment.find(params[:id])
      end

      def new
        @appointment = Appointment.new
      end

      def create
        @appointment = Appointment.new
        if @appointment.save
          redirect_to @appointment
        end
      end


      private

      def appointment_params
        params.require(:appointment).permit(:appointment_datetime, :doctor_name, :patient_name)
      end

    end

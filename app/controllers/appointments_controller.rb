class AppointmentsController < ApplicationController
    before_action :find_id, only: [:show]

    def show
    end

    private

    def find_id
        @appointment = Appointment.find(params[:id])
    end

    def appointment_params
        params.require(:appointment).permit(:appointment_date, :doctor_id, :patient_id)
    end
end
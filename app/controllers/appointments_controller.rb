class AppointmentsController < ApplicationController
    
    def new
        @appointment = Appointment.new
    end

    def show
       @appointment = Appointment.find(params[:id])
    end

    def create
        binding.pry
        @appointment =  Appointment.new(appointment_params)
        if @appointment.save
            redirect_to appointment_path(@appointment)
        else
            render :new
        end
    end

    private

    def appointment_params
        params.require(:appointment).permit(
            :doctor_id,
            :patient_id,
            :appointment_datetime
        )
    end
end

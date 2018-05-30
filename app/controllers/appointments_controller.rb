class AppointmentsController < ApplicationController
    def new
        @appointment = Appointment.new
    end

    def edit
        @appointment = Appointment.find(params[:id])
    end

    def show
        @appointment = Appointment.find(params[:id])
        # raise params.inspect
    end

    def create
        @appointment = Appointment.new(appointment_params)
        # binding.pry
        if @appointment.valid?
            @appointment.save
            redirect_to appointment_path(@appointment)
        else
            render :new
        end
    end

    def update
        @appointment = Appointment.find(params[:id])
        @appointment.update(appointment_params)
        if @appointment.valid?
            @appointment.save
            redirect_to appointment_path(@appointment)
        else
            render :edit
        end
    end

    def destroy
        @appointment = Appointment.find(params[:id]).destroy
        redirect_to appointment_url
    end

    private

    def index
        @appointments = Appointment.all
    end

    def appointment_params
        params.require(:appointment).permit(:doctor_id, :patient_id)
    end
end

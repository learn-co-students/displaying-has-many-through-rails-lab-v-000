class DoctorsController < ApplicationController
    def index
        @doctors = Doctor.all
    end

    def new
        @doctor = Doctor.new
    end

    def edit
        @doctor = Doctor.find(params[:id])
    end

    def show
        @doctor = Doctor.find(params[:id])
        # raise params.inspect
    end

    def create
        @doctor = Doctor.new(doctor_params)
        # binding.pry
        if @doctor.valid?
            @doctor.save
            redirect_to doctor_path(@doctor)
        else
            render :new
        end
    end

    def update
        @doctor = Doctor.find(params[:id])
        @doctor.update(doctor_params)
        if @doctor.valid?
            @doctor.save
            redirect_to doctor_path(@doctor)
        else
            render :edit
        end
    end

    def destroy
        @doctor = Doctor.find(params[:id]).destroy
        redirect_to doctor_url
    end

    private

    def doctor_params
        params.require(:doctor).permit(:name, :department, :patient_id, :appointment_id)
    end
end

class DoctorsController < ApplicationController
    before_action :get_doctor_and_info, only: [:show]
    before_action :get_doctors_and_patients, only: [:index]

    def index
    end

    def show
    end


    private

    def get_doctors_and_patients
        @doctors = Doctor.all.includes(:patients)
    end

    def get_doctor_and_info
        @doctor = Doctor.where(id: params[:id]).includes(:appointments, :patients).first
    end


end

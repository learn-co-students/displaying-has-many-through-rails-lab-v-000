class DoctorsController < ApplicationController

    before_action :set_doctor, only: [:show]

    def show

    end

    private
    def set_doctor
        @doctor = Doctor.find_by(id: params[:id])
    end

end

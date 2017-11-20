class PatientsController < ApplicationController

  def index
    @patients = Patient.all
  end
    def show
      current_patient
    end

    private

    def current_patient
      @patient = Patient.find(params[:id])
    end
end

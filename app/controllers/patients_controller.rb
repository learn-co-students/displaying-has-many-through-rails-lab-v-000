class PatientsController < ApplicationController
  def index
    @patients = Patient.includes(:appointments).all
  end

  def show
    @patient = Patient.includes(:appointments, :doctors).find(params[:id])
  end
end

class PatientsController < ApplicationController
  def show
    @patient = Patient.find_by(id: params[:id])
  end

  def index
    @patients = Patient.all
  end
end

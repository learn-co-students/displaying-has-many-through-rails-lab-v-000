class PatientsController < ApplicationController
  def index
    @patients = Patient.all
  end

  def show
    if params[:id]
    @patient = Patient.find(params[:id])
    end
  end
end

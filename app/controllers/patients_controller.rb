class PatientsController < ApplicationController
  def show
    @patient = Patient.find_by_id(params[:id])
  end

  def index
    @patients = Patient.all
  end
end

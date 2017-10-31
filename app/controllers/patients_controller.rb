class PatientsController < ApplicationController
  def show
    @patient = Patient.find(params[:id])
  end

  def index
    @patient = Patient.all
  end
end

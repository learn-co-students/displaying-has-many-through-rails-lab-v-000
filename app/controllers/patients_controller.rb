class PatientsController < ApplicationController
  def new
    @patient = Patient.new
  end

  def edit
    @patient = Patient.find(params[:id])
  end

  def show
    @patient = Patient.find(params[:id])
  end

  def index
    @patients = Patient.all
  end
end

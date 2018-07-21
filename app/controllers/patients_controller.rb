class PatientsController < ApplicationController
  def index
    @patients = Patient.all
  end

  def create
  end

  def new
  end

  def edit
  end

  def destroy
  end

  def show
    @patient = Patient.find(params[:id])
  end
end

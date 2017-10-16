class PatientsController < ApplicationController
  def index
    @patients = Patient.all
  end

  def show
    @patient = Patient.find(params[:id])
  end

  def new
  end

  def create
  end

  def destroy
  end

  def update
  end

  def edit
  end
end

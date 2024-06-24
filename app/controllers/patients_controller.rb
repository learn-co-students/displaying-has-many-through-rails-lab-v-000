class PatientsController < ApplicationController
  before_action :set_patient, only: [:show, :edit]
  def index
    @patients = Patient.all
  end

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def delete
  end

  private
  def set_patient
    @patient = Patient.find(params[:id])
  end
end

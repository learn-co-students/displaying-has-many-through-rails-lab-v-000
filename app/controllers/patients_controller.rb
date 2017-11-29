class PatientsController < ApplicationController
  before_action :set_patient, only: [:show, :edit, :update]

  def index
    @patients = Patient.all
  end

  def set_patient
    @patient = Patient.find(params[:id])
  end
end

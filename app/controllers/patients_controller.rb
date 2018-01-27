class PatientsController < ApplicationController
  def new
    @patient = Patient.new
  end

  def create
		patient = Appointment.create(params[:name, :age])
		redirect_to patient_path(patient)
	end

  def index
    @patients = Patient.all
  end

  def show
    @patient = Patient.find(params[:id])
  end
end

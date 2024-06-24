class PatientsController < ApplicationController
  def index
    @patients = Patient.all
  end

  def show
    @patient = Patient.find(params[:id])

  end

  def new
    @patient = Patient.new
    @patient.appointments.build(appointment_datetime: params[:appointment_datetime])
   @patient.appointments.build(doctor_id: params[:doctor_id])
    @doctors = Doctor.all
  end

  def create
    patient = Patient.create(params[:patient])
    redirect_to patient_path(patient)
  end

  def edit
    @patient = Patient.find(params[:id])
  end

  def update
    patient = Patient.find(params[:id])
    patient.update(params.require(:patient))
    redirect_to patient_path(patient)
  end
end

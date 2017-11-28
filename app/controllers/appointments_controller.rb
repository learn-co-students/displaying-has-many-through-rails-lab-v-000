class AppointmentsController < ApplicationController
  
  def create
  end
  
  def new
  end

  def edit
  end

  def show
    #binding.pry
    @appointment = Appointment.find(params[:id])
    @patient = Patient.find(@appointment.patient_id)
    @doctor = Doctor.find(@appointment.doctor_id)
  end

  def update
  end

end

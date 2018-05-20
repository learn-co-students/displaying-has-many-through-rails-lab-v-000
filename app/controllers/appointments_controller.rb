class AppointmentsController < ApplicationController

  def index
    raise ActionController::RoutingError.new('List of appointments not permitted')
  end

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.create(:appointment_params)
    redirect_to appointment_path(@appointment)
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  private
  def appointment_params
    params.require(:appointment).permit(
      :appointment_datetime,
      doctor_attributes: [
      :id,
      :name,
      :department,
      :patient
    ],
      patient_attributes: [
        :id,
        :name,
        :age
      ]
    )
  end

end

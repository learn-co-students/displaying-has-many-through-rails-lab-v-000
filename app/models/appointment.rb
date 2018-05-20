class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  private
  def appointment_params
    params.require(:appointment).permit(:appointment_datetime, :doctor_id, :patient_id)
  end
end

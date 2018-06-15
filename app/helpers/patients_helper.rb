module PatientsHelper
  def add_full_dates(patient)
    patient.appointments.each do |appt|
      appt.full_date ||= appt.appointment_datetime.strftime("%B %e, %Y at %H:%M %p")
      appt.save
    end
  end

  module_function :add_full_dates
end

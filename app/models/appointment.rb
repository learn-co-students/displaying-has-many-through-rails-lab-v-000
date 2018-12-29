class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def appt_date
    d = self.appointment_datetime
    d.strftime('%B') +' '+ d.strftime('%e') +', ' + d.strftime('%Y') + ' at ' + d.strftime('%H:%M')
  end
end

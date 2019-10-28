class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def human_date  # ////// 5 commented code does same thing the one line of code does at the end ////////
    # month = self.appointment_datetime.strftime('%B')
    # day = self.appointment_datetime.strftime('%d')
    # year = self.appointment_datetime.strftime('%Y')
    # time = self.appointment_datetime.strftime('%H:%M')
    #"#{month} #{day}, #{year} at #{time}"
    self.appointment_datetime.strftime('%B %d, %Y at %H:%M')
  end
end

class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def appointment_time
    self.appointment_datetime.strftime("%B %d, %Y at %H:%M")
  end
end


# https://ruby-doc.org/stdlib-2.3.1/libdoc/date/rdoc/DateTime.html

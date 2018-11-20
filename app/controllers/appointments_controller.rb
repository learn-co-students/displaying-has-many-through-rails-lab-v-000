class AppointmentsController < ApplicationController

  def appointment_datetime
    "#{self.date} at #{self.time}"
  end
end

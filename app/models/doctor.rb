require 'date'
require 'pry'

class Doctor < ActiveRecord::Base
  has_many :appointments
  has_many :patients, through: :appointments
  
  def appointment_count
    self.appointments.count
  end
  
  def date_format
    format_dates = []
    self.appointments.each do |appt|
      format_dates << appt.appointment_datetime.strftime('%B %d, %Y')
    end
    format_dates
  end
end
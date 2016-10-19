class Doctor < ActiveRecord::Base
  has_many :appointments
  has_many :patients, through: :appointments

  def readable_appointments
    self.appointments.each do |appointment|
      "#{appointment.appointment_datetime.to_formatted_s(:long)[0..-7]} at #{appointment.appointment_datetime.to_formatted_s(:long)[-5..-1]}" 
    end
  end


end


# date.to_formatted_s(:long)          # => "November 10, 2007"
class Appointment < ActiveRecord::Base
  belongs_to :patient
  belongs_to :doctor

  def readable_date

    date_time = self.appointment_datetime.to_formatted_s(:long_ordinal)
    time = date_time.slice(-5..-1)
    date = date_time.slice(0..-7)
      if date.include?("th")
        new_date = date.delete("th")
      elsif date.include?("st")
        new_date = date.delete("st")
      else
        new_date = date.delete("rd")
      end

    "#{new_date} at #{time}"
  end
end

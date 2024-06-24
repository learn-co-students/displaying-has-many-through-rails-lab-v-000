class Appointment < ActiveRecord::Base
  belongs_to :patient
  belongs_to :doctor

  def format_date
    formatted_str = self.appointment_datetime.to_datetime.to_formatted_s(:long_ordinal)
    insert_index = formatted_str.index(":") - 2
    formatted_str.insert(insert_index, "at ").gsub("th", "").gsub("st", "").gsub("nd", "").gsub("rd", "")
  end

  def patient_name
    self.patient.name
  end
end

class Appointment < ActiveRecord::Base
  belongs_to :patient
  belongs_to :doctor
end

# Appointment class (model) is mapped to the appointments join table,
# which contains 2 foreign key columns of patient_id and doctor_id
# since an appointment instance belongs to 1 patient instance and 1 doctor instance

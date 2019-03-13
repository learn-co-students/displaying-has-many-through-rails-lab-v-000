class Appointment < ActiveRecord::Base
  belongs_to :patients
end

class Patient < ActiveRecord::Base
  has_many appointments
  has_many doctors, throught: :appointments
end

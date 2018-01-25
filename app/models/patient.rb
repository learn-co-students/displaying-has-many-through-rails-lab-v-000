class Patient < ActiveRecord::Base
  has_many :appointments
end

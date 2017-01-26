class Patient < ActiveRecord::Base
  has_many :doctors
end

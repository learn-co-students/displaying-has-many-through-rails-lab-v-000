class Patient < ActiveRecord::Base
    belongs_to :doctor
    
    # why not also has_many :doctors or a diff activerecord method
    has_many :appointments
    has_many :doctors, through: :appointments
end

class Doctor < ApplicationRecord
    has_many :appointments
    has_many :patients, through: :appointments

    def doctor_count
        self.patients.count
    end 

     private 

    def read_date 
        self.strftime("%Y-%m-%d")
    end 

    def read_time 
        self.strftime("%I:%M %P")
    end 
end

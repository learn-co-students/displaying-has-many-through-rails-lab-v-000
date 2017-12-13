class Appointment < ActiveRecord::Base
    belongs_to :doctor
    belongs_to :patient
    
    def formatted_appointment_date
        t = self.appointment_datetime.to_formatted_s(:long)
        t.split.insert(3, "at").join(" ")
    end
    
    # def appointment_datetime
    #     Time.parse(self.appointment_datetime)
    # end
    
end

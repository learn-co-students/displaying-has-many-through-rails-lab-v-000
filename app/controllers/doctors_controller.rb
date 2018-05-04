class DoctorsController < ApplicationController 

    def show 
       @doctor = Doctor.find_by(id: params["id"])

       @doctor.appointments.each do |apmt|
        @patient = Patient.find_by(id: apmt.patient_id)
       end
    end
    
end
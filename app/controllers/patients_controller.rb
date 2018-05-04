class PatientsController < ApplicationController 

    def index 
        @all = Patient.all 
    end

    def show 
        @patient = Patient.find_by(id: params["id"])
        @patient.appointments.each do |apmt|
            @doctor = Doctor.find_by(id: apmt.doctor_id)
        end
    end

end

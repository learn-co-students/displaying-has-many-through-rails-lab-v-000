class PatientsController < ApplicationController

    def patient
        @patient = Patient.find(params[:id])

        
    end


    def index
      @patient = Patient.all
        
    end

end

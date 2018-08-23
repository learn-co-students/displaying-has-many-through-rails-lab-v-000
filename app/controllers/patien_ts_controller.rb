class PatienTsController < ApplicationController

    def patient
        @patient = Patient.find(params[:id])

        
    end
end

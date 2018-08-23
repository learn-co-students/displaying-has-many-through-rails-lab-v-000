class DoctoRsController < ApplicationController

    def show
        @doctor = Doctor.find(params[:id])

    end
end

class PatientsController < ApplicationController
    def index
        @patients = Patient.all
    end

    def new
        @patient = Patient.new
    end

    def edit
        @patient = Patient.find(params[:id])
    end

    def show
        @patient = Patient.find(params[:id])
        # raise params.inspect
    end

    def create
        @patient = Patient.new(patient_params)
        # binding.pry
        if @patient.valid?
            @patient.save
            redirect_to patient_path(@patient)
        else
            render :new
        end
    end

    def update
        @patient = Patient.find(params[:id])
        @patient.update(patient_params)
        if @patient.valid?
            @patient.save
            redirect_to patient_path(@patient)
        else
            render :edit
        end
    end

    def destroy
        @patient = Patient.find(params[:id]).destroy
        redirect_to patient_url
    end

    private

    def patient_params
        params.require(:patient).permit(:name, :age, :doctor_id)
    end
end


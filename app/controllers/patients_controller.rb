class PatientsController < ApplicationController
  def index
    @patients = Patient.all
  end

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.create(patient_params)
    if @patient.valid?
      reditrect_to @patient
    else
      render :new
    end
  end

  def show
    @patient = Patient.find_by(id: params[:id])
  end

  def edit
    @patient = Patient.find_by(id: params[:id])
  end

  def update
    @patient = Patient.find_by(id: params[:id])
    @patient.update(patient_params)
    if @patient.valid?
      redirect_to @patient
    else
      render :edit
    end
  end

  def delete
    @patient = Patient.find_by(id: params[:id])
    @patient.destroy
    redirect_to patietns_path
  end

  private

    def patient_params
      params.require(:patient).permit(:name, :age)
    end

end

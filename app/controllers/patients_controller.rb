class PatientsController < ActionController::Base
   def show 
    @patient = Patient.find(params[:id])
  end

  def index
    @patients = Patient.all 
  end

  def new 
    @patient = Patient.new
  end

  def create 
    patient = Patient.create(patient_params)
    redirect_to patient_path(patient)
  end

  def patient_params
    params.require(:patient).permit(:name, :age)
  end
  
end
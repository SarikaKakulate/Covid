class DoctorController < ApplicationController

def report
    @patient=Patient.find(params[:id])
    #redirect_to(action:'suggest')
    redirect_to(action:'finalreport',patientid:@patient.id)
    #id=@patient.id
     # redirect_to(action: 'list')
end

 def finalreport
    @patient=Patient.find(params[:id])
  end
def home
   redirect_to root_path
end
def new
    #doctor=Doctor.new(doctor_params)
    @doctor=Doctor.new
  end
def suggest
    @patient=Patient.find(params[:id])
    redirect_to(action:'suggest')
    #redirect_to(action:'suggest',patient_id:@patient.id)
  end

def create
    @doctor=Doctor.new(doctor_params)
    if @doctor.save
       redirect_to(action:'new')
    else
      flash[:notice]="Error:record not created"
      render(action:'new')
       #redirect_to(action:'index')
    end
  end
def save
  end

  def doctor_params
    params.require(:doctor).permit(:doctorname,:dmobno,:dcity,:patient_id,:dmedicine,:ddescription)
  end


end

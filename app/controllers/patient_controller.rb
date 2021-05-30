class PatientController < ApplicationController

def report
    @patient=Patient.find(params[:id])
    #redirect_to(action:'suggest')
    redirect_to(action:'finalreport',patientid:@patient.id)
end

 def finalreport
    @patient=Patient.find(params[:id])
  end
  def suggest
  end
  def suggestpatient
     @patient=Patient.new(patient_params)
    if @patient.save
       redirect_to(action:'welcome')
    else
      flash[:notice]="Error:record not created"
      render(action:'new')
    end
  end

 def add
    #@book=Book.new
  end
  def edit
    @patient=Patient.find(params[:id])
  end
  def delete
    #which record delete
    @patient=Patient.find(params[:id])
  end
  def destroy
    bk=Patient.find(params[:id])
    bk.destroy
    redirect_to(action:'list')
  end
  def update
    @patient=Patient.find(params[:id])
    id=@patient.id
    if @patient.update_attributes(patient_params)
      redirect_to(action: 'list')
    else
      render('edit')
    end
  end

  def new
    #@book=Book.new(book_params)
    @patient=Patient.new
  end
  def create
    @patient=Patient.new(patient_params)
    if @patient.save

      # format.html { redirect_to root_path, notice: 'Record successfully created.' }
      redirect_to root_path
       #redirect_to(action:'welcome')
    else
      flash[:notice]="Error:record not created"
      render(action:'new')
    end
  end

  def search
  end
  def save
  end
  def list
    #fetching data from db
    @patients=Patient.all
  end
  def new
    #@book=Book.new
  end
  def show
    @patient=Patient.find(params[:id])
  end
  def patient_params
    params.require(:patient).permit(:name,:address,:mobno,:city,:symptoms,:age,:gender)
  end

end

class PatientController < ApplicationController
 def index
 	
 end

 def show
 end

 def new
 	@patient = Patient.new
 end

 def create
 	@patient = Patient.create(patient_params)
 	if @patient.save
 		redirect_to @patient
 	else
 		render 'new'
 	end
 end

 def edit
 end

 def update
 end

 def destroy
 end

 private

 def find_patient
 end

 def patient_params
 	params.require(:patient).permit(:lname, :fname, :mi, :address)
 end

end

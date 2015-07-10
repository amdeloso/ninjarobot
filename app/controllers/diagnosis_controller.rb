class DiagnosesController < ApplicationController
	before_action :authenticate_user!
	
	def create
		@patient =Patient.find(params[:patient_id])
		@diagnosis = Diagnosis.create(params[:diagnosis].permit(:content))
		@diagnosis.user_id = current_user.user_id
		@diagnosis.patient_id = @patient.patient_id

		if @patient.save
			redirect_to patient_path(@patient)
		else
			render 'new'
		end
	end
end

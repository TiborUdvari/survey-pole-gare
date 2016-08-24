class SurveysController < ApplicationController
  def new
  end
  def create
  	# render plain: params[:survey].inspect
  	@survey = Survey.new(survey_params)
    puts survey_params
    puts @survey
  	@survey.save
  	redirect_to @survey
	end
end
private
  def survey_params
    params.require(:survey).permit(:q1, q2: params[:survey][:q2].try(:keys))
  end
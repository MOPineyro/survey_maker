class RenameSurveySurveyTakersJoinTable < ActiveRecord::Migration
  def change
    rename_table :survey_survey_takers, :survey_takers_surveys
  end
end

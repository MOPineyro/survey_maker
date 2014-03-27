class RenameTablesToMatchSurveyUnderscoreTakersTable < ActiveRecord::Migration
  def change
    rename_column :surveys_surveytakers, :surveytaker_id, :survey_taker_id
    rename_column :survey_submissions, :surveytaker_id, :survey_taker_id
    rename_table :surveys_surveytakers, :survey_survey_takers
  end
end

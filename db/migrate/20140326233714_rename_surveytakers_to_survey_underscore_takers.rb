class RenameSurveytakersToSurveyUnderscoreTakers < ActiveRecord::Migration
  def change
    rename_table :surveytakers, :survey_takers
  end
end

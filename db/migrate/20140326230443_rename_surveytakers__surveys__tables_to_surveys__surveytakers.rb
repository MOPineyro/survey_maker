class RenameSurveytakersSurveysTablesToSurveysSurveytakers < ActiveRecord::Migration
  def change
    rename_table :surveytakers_surveys_tables, :surveys_surveytakers
  end
end

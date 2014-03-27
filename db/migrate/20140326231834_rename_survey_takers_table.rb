class RenameSurveyTakersTable < ActiveRecord::Migration
  def change
    rename_table :survey_takers, :surveytakers
  end
end

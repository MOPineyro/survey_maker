class CreateSurveySubmissions < ActiveRecord::Migration
  def change
    create_table :survey_submissions do |t|
      t.column :surveytaker_id, :integer
      t.column :survey_id, :integer

      t.timestamps
    end
  end
end

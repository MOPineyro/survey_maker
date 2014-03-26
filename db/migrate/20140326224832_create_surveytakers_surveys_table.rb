class CreateSurveytakersSurveysTable < ActiveRecord::Migration
  def change
    create_table :surveytakers_surveys_tables, :id => false do |t|
      t.integer :survey_id
      t.integer :surveytaker_id
    end
  end
end

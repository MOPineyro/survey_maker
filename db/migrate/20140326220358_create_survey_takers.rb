class CreateSurveyTakers < ActiveRecord::Migration
  def change
    create_table :survey_takers do |t|
      t.column :name, :string

      t.timestamps
    end
  end
end

class SurveyTaker < ActiveRecord::Base
  has_and_belongs_to_many :surveys
  has_many :surveysubmissions
end

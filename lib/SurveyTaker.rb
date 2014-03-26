class SurveyTaker < ActiveRecord::Base
  has_many_and_belongs_to :survey
  has_many :surveysubmissions
end

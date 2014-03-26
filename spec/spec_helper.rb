require 'active_record'
require 'rspec'
require 'pg'
require 'shoulda-matchers'

require 'survey'
require 'question'
require 'choice'
require 'selection'
require 'surveytaker'
require 'surveysubmission'

database_configurations = YAML::load(File.open('./db/config.yml'))
development_configuration = database_configurations['test']
ActiveRecord::Base.establish_connection(development_configuration)

RSpec.configure do |configure|
  configure.after(:each) do
    Survey.all.each{ |survey| survey.destroy }
    Question.all.each{ |question| question.destroy }
    Choice.all.each{ |choice| choice.destroy }
    Selection.all.each{ |selection| selection.destroy }
    SurveyTaker.all.each{ |taker| taker.destroy }
    SurveySubmission.all.each{ |submission| submission.destroy }
  end
end

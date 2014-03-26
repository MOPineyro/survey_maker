require 'spec_helper'

describe Survey do
  it { should have_many :questions }

  it 'should have questions' do
    test_survey = Survey.create({:name => 'What astral sign are you?'})
    test_question = test_survey.questions.create({:sentence => 'What month were you born in?'})
    test_survey.questions.should eq [test_question]
    test_survey.questions.first.sentence.should eq 'What month were you born in?'
  end

end

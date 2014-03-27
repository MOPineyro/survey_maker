require 'spec_helper'

describe SurveyTaker do
  it { should have_and_belong_to_many :surveys }

  it 'should be able to access all surveys taken by the surveytaker' do
    test_taker = SurveyTaker.create({name: "Diplo"})
    test_survey = test_taker.surveys.create({:name => "Who's your favorite DJ?"})
    test_taker.surveys.should eq [test_survey]
  end
end

require 'spec_helper'

describe Question do
  it { should belong_to :survey }

  it 'should have multiple choices' do
    test_question = Question.create({sentence: "What's your favorite scary movie?"})
    test_first_choice = test_question.choices.create({name: "Friday the 13th"})
    test_second_choice = test_question.choices.create({name: "Nightmare on Elm Street"})
    test_third_choice = test_question.choices.create({name: "Scream"})
    test_question.choices.first.name.should eq "Friday the 13th"
  end
end

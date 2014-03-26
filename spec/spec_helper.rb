require 'activerecord'
require 'rspec'
require 'shoulda-matchers'

ActiveRecord::Base.establish_connection(YAML::load(File.open('./db/config.yml')))["test"]

describe 'This' do
  it { should do some stuff }

  it 'should do stuff' do
    somestuff.should eq this_other_stuff
  end
end

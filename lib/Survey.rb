class Survey < ActiveRecord::Base
  has_many :questions
  has_and_belongs_to_many :surveytakers
end

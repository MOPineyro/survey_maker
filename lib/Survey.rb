class Survey < ActiveRecord::Base
  has_many :questions
  has_many_and_belongs_to :surveytakers
end

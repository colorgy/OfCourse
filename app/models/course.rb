class Course < ActiveRecord::Base
  has_many :course_period_relationships
  has_many :periods, through: :course_period_relationships
end

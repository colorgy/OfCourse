class CoursePeriodRelationship < ActiveRecord::Base
  belongs_to  :course
  belongs_to  :period
  has_one     :location
end

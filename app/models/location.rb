class Location < ActiveRecord::Base
  belongs_to :course_period, class_name: "CoursePeriodRelationship"
end

class Period < ActiveRecord::Base
  has_many :course_period_relationships
  has_many :courses, through: :course_period_relationships

  def get_location(course)
    if course.class.to_s == "Course"
      self.course_period_relationships.find_by(course: course).location
    end
  end
end

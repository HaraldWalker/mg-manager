class Course < ActiveRecord::Base
  self.primary_key = 'course_id'
  self.table_name = 'course'

  has_many :recipes
end
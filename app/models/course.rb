class Course < ActiveRecord::Base
  self.primary_key = 'course_id'
  set_table_name 'course'

  has_many :recipes
end
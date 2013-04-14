class Recipe < ActiveRecord::Base
  self.primary_key = 'recipe_id'
  set_table_name "recipe"

  has_many :ingredients
  has_many :directions
  belongs_to :course
end
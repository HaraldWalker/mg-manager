class Recipe < ActiveRecord::Base
  self.primary_key = 'recipe_id'
  self.table_name = 'recipe'

  has_many :ingredients, conditions: 'parent_id = -1'
  has_many :directions
  has_many :recipe_notes
  belongs_to :course
end
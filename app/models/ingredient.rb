class Ingredient < ActiveRecord::Base
  self.primary_key = 'ingredient_id'
  self.table_name = 'ingredient'

  default_scope order('sort_order ASC')

  belongs_to :recipe
  belongs_to :ingredient

  has_many :ingredients, foreign_key: 'parent_id'
end
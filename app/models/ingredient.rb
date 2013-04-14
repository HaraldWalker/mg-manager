class Ingredient < ActiveRecord::Base
  self.primary_key = 'ingredient_id'
  set_table_name "ingredient"

  default_scope order('sort_order ASC')

  belongs_to :recipe
end
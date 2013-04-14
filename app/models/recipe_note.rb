class RecipeNote < ActiveRecord::Base
  self.primary_key = 'recipe_note_id'
  self.table_name = 'recipe_note'
  default_scope order('sort_order ASC')

  belongs_to :recipe
  belongs_to :note_type
end
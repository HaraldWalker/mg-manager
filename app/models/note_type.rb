class NoteType < ActiveRecord::Base
  self.primary_key = 'note_type_id'
  self.table_name = 'note_type'
  default_scope order('name ASC')
  has_many :recipe_notes
end
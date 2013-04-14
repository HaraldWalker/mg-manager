class Direction < ActiveRecord::Base
  self.primary_key = 'direction_id'
  set_table_name "direction"

  default_scope order('sort_order ASC')

  belongs_to :recipe
end
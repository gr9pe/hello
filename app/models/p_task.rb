class PTask < ApplicationRecord
  self.table_name = "p_task"
  self.primary_key = "p_task_id"
  belongs_to :p_user
  validates :title, :p_user_id, presence: true
end

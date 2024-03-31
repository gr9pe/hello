class PCorp < ApplicationRecord
  self.table_name = "p_corp"
  self.primary_key = "p_corp_id"
  belongs_to :p_user
  validates :name, :p_user_id, presence: true
end

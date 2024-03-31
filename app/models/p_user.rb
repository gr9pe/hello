class PUser < ApplicationRecord
    has_secure_password
    self.table_name = "p_user"
    self.primary_key = "p_user_id"
    validates :firstname, :mail, :password, presence: true
    validates :mail, uniqueness: true
end

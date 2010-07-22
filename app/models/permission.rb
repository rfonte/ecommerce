class Permission < ActiveRecord::Base
  has_many :role_permissions
end


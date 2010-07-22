class Role < ActiveRecord::Base
  has_many :permissions, :through => :role_permitions
end


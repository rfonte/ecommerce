class Role < ActiveRecord::Base
  has_many :permissions, :through => :role_permition
end


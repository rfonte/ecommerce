class AjusteUserRoles < ActiveRecord::Migration
  def self.up
    rename_column(:user_roles, :id_user, :user_id)
    rename_column(:user_roles, :id_role, :role_id)
  end

  def self.down
    rename_column(:user_roles, :user_id, :id_user)
    rename_column(:user_roles, :role_id, :id_role)
  end
end


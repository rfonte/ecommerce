class AjusteRolePermissions < ActiveRecord::Migration
  def self.up
    rename_column(:role_permissions, :id_role, :role_id)
    rename_column(:role_permissions, :id_permission, :permission_id)
  end

  def self.down
    rename_column(:role_permissions, :role_id, :id_role)
    rename_column(:role_permissions, :permission_id, :id_permission)
  end
end


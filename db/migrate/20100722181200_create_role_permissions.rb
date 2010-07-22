class CreateRolePermissions < ActiveRecord::Migration
  def self.up
    create_table :role_permissions do |t|
      t.integer :id_role
      t.integer :id_permission

      t.timestamps
    end
  end

  def self.down
    drop_table :role_permissions
  end
end


class AjusteTypeVariaveisBanco < ActiveRecord::Migration
  def self.up
    change_column :role_permissions,:role_id,:int
    change_column :role_permissions,:permission_id,:int
    change_column :user_roles,:user_id,:int
    change_column :user_roles,:role_id,:int
  end

  def self.down
    change_column :role_permissions,:role_id,:string
    change_column :role_permissions,:permission_id,:string
    change_column :user_roles,:user_id,:string
    change_column :user_roles,:role_id,:string
  end
end


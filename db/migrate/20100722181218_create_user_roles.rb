class CreateUserRoles < ActiveRecord::Migration
  def self.up
    create_table :user_roles do |t|
      t.integer :id_user
      t.integer :id_role

      t.timestamps
    end
  end

  def self.down
    drop_table :user_roles
  end
end


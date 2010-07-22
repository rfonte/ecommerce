class CreateRoles < ActiveRecord::Migration
  def self.up
    create_table :roles do |t|
      t.string :login
      t.string :create_user
      t.string :view_all_users
      t.string :all

      t.timestamps
    end
  end

  def self.down
    drop_table :roles
  end
end


class CreateUserProfiles < ActiveRecord::Migration
  def self.up
    create_table :user_profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :nickname
      t.string :email
      t.string :address
      t.string :complemento
      t.string :cep
      t.string :tel_res
      t.string :tel_cel
      t.string :web_site
      t.string :twitter
      t.string :avatar
      t.timestamps
    end
  end

  def self.down
    drop_table :user_profiles
  end
end


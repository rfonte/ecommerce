class CreateForgotPasses < ActiveRecord::Migration
  def self.up
    create_table :forgot_passes do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :forgot_passes
  end
end

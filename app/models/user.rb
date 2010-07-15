class User < ActiveRecord::Base
  validates_presence_of  :login, :password, :name, :email, :last_login
  validates_length_of    :login, :in => 8..14
  validates_length_of    :password, :in => 5..50
  validates_format_of    :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/
  validates_uniqueness_of:login
  validates_uniqueness_of:email
end


class User < ActiveRecord::Base
  validates_presence_of  :login, :password, :name, :email#, :last_login
  validates_length_of    :login, :in => 8..14
  validates_length_of    :password, :in => 5..50
  validates_format_of    :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/
  validates_uniqueness_of:login
  validates_uniqueness_of:email

  def self.user_is_valid?(login, password)
    user = User.find(:first, :conditions => "(login = '#{login}' or email = '#{login}') and password = '#{password}'")
    return !(user.nil?)
  end

  def user_last_login

  end

 # @user.first.last_login = "1234" tentativa de atribuição na hora que cria um novo user
end


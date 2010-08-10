class ForgotPass < ActiveRecord::Base
  validates_presence_of :email_forgot_password
  validates_format_of   :email_forgot_password, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/

  def self.user_mail_is_valid?(email)
    user = User.find(:first, :conditions => ["email = ?",email])
    return !(user.nil?)
  end
end


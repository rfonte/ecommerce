# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time

  # See ActionController::RequestForgeryProtection for details
  # Uncomment the :secret if you're not using the cookie session store
  protect_from_forgery # :secret => '1371b8248a9d07f47aebefd32af3e7e4'

  # See ActionController::Base for details
  # Uncomment this to filter the contents of submitted sensitive data parameters
  # from your application log (in this case, all fields with names like "password").
  #filter_parameter_logging :password

  def autorization
    admin_role = 1
    authorized = false
    page_code = "#{params[:controller]}_#{params[:action]}"

    if session[:login].nil? and page_code == "users_new"
      return authorized = true
    elsif session[:login].nil?
      render :text => "Acesso Negado !!"
      return false
    end

    permission = Permission.find_by_name page_code
    user = User.find(:first , :conditions => ["login = ?",session[:login]])
    user_role = UserRole.find(:first , :conditions => ["user_id = ?",user.id])

    if user_role.role_id == admin_role
        authorized = true
    else
        role = RolePermission.find(:first , :conditions => ["role_id = ? and permission_id = ?",user_role.role_id,permission.id])
        authorized = !role.nil?
    end
    render :text => "Acesso Negado !!" unless authorized
  end
end


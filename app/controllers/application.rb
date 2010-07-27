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
    if session[:login] == nil
      render :text => "Acesso Negado !!"
      return false
    end
    allowed = false
    permission = "#{params[:controller]}_#{params[:action]}"
    userID = User.find(:first , :conditions => "(login = '#{session[:login]}')")
    roleID = UserRole.find(:first, :conditions => "(user_id = #{userID.id})")
    permissionID = RolePermission.find(:first, :conditions => "(role_id = #{roleID.role_id})")
    if permissionID
      permissionName = Permission.find(:first, :conditions => "id = #{permissionID.permission_id}")
      allowed = true if permissionID.permission_id == 1 || permissionName.name == "#{permission}"
    end
    render :text => "Acesso Negado !!" unless allowed
    #A.find(:all, :conditions => ["b.foo = ?", 25], :joins => {:b =>{}} )
  end
  end
end


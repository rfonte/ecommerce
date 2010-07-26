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
  # filter_parameter_logging :password

  def autorization
    permission = params[:controller] + '_' + params[:action]
    userID = User.find(:first , :conditions => "(login = '#{session[:login]}')")
    roleID = UserRole.find(:first, :conditions => "(user_id = #{userID.id})")
    permissionID = RolePermission.find(:first, :conditions => "(role_id = #{roleID.role_id})")
    permissionName = Permission.find(:first, :conditions => "(id = #{permissionID.permission_id})")

    if permissionID.permission_id == '1' || permissionName.name == "#{permission}"
      return true
    else
      render :text => "vc nao pode fazer isso viadinho!"
    end

    #youCan = RolePermission.find(:first , :conditions => "(user_id = '#{userID.id}')
    #                                                  and (permission_id = '#{permission}')")
    #A.find(:all, :conditions => ["b.foo = ?", 25], :joins => {:b =>{}} )
    #return !(youCan.nil?)
  end
end


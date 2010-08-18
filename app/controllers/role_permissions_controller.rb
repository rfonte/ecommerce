class RolePermissionsController < ApplicationController
  before_filter :autorization
  before_filter before_filter :session_expiry, :except => [:login, :logout]

  def index
    @role_permissions = RolePermission.find(:all, :include => [:role, :permission])

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @role_permissions }
    end
  end

  def new
    @role_permission = RolePermission.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @role_permission }
    end
  end

  def edit
    @role_permission = RolePermission.find(params[:id])
  end

  def create
    @role_permission = RolePermission.new(params[:role_permission])

    respond_to do |format|
      if @role_permission.save
        flash[:notice] = 'RolePermission was successfully created.'
        format.html { redirect_to(@role_permission) }
        format.xml  { render :xml => @role_permission, :status => :created, :location => @role_permission }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @role_permission.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @role_permission = RolePermission.find(params[:id])

    respond_to do |format|
      if @role_permission.update_attributes(params[:role_permission])
        flash[:notice] = 'RolePermission was successfully updated.'
        format.html { redirect_to(@role_permission) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @role_permission.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @role_permission = RolePermission.find(params[:id])
    @role_permission.destroy

    respond_to do |format|
      format.html { redirect_to(role_permissions_url) }
      format.xml  { head :ok }
    end
  end
end


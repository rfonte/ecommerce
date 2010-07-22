class RolePermissionsController < ApplicationController
  # GET /role_permissions
  # GET /role_permissions.xml
  def index
    @role_permissions = RolePermission.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @role_permissions }
    end
  end

  # GET /role_permissions/1
  # GET /role_permissions/1.xml
  def show
    @role_permission = RolePermission.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @role_permission }
    end
  end

  # GET /role_permissions/new
  # GET /role_permissions/new.xml
  def new
    @role_permission = RolePermission.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @role_permission }
    end
  end

  # GET /role_permissions/1/edit
  def edit
    @role_permission = RolePermission.find(params[:id])
  end

  # POST /role_permissions
  # POST /role_permissions.xml
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

  # PUT /role_permissions/1
  # PUT /role_permissions/1.xml
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

  # DELETE /role_permissions/1
  # DELETE /role_permissions/1.xml
  def destroy
    @role_permission = RolePermission.find(params[:id])
    @role_permission.destroy

    respond_to do |format|
      format.html { redirect_to(role_permissions_url) }
      format.xml  { head :ok }
    end
  end
end

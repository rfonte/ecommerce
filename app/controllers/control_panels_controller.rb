class ControlPanelsController < ApplicationController
  before_filter :autorization
  before_filter before_filter :session_expiry, :except => [:login, :logout]
end


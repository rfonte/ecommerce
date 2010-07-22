class SessionController < ApplicationController
  def new
    login = params[:login]
    senha = params[:senha]

    user_valid = User.user_is_valid?(login, senha)

    if user_valid
      flash[:user_winner] = "Login efetuado com sucesso !!"
      flash[:user_looser] = ""
      user = User.find(:first , :conditions => "(login = '#{login}' or email = '#{login}')")
      user.last_login = Time.now
      user.save
      session[:login] = login
    else
      flash[:user_looser] = "Usuário Inválido !!"
      flash[:user_winner] = ""
    end
    render :action => :index
  end

  def index
  end

 end


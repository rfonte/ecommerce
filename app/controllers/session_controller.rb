class SessionController < ApplicationController
  def new
    login = params[:login]
    senha = params[:senha]
    session[:login] = login #@User
    session[:senha] = senha
    flash[:message] = "Data was saved successfully"

    user_valid = User.user_is_valid?(login, senha)

    if user_valid
      flash[:user_winner] = "Eba !!"
      flash[:user_looser] = ""
    else
      flash[:user_looser] = "Usuário Inválido !!"
      flash[:user_winner] = ""
    end
    render :action => :index
  end

  def index

  end

 end


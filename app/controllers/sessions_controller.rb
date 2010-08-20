class SessionsController < ApplicationController

  def new
    login = params[:login]
    senha = params[:senha]
    logout = params[:logout]

    if logout != nil
      session[:login] = nil
      #cookies[:login] = nil
    else

      user_valid = User.user_is_valid?(login, senha)

      if user_valid
        flash[:user_winner] = "Login efetuado com sucesso !!"
        flash[:user_looser] = ""
        session[:expires_at] = 20.minutes.from_now
        user = User.find(:first , :conditions => ["login = ? or email = ?",login,login])
        user.last_login = Time.now
        user.save

        #cookies[:login] = { :value => "#{login}", :expires => Time.now + 3600}
        session[:login] = login
      else
        flash[:user_looser] = "Usuário Inválido !!"
        flash[:user_winner] = ""
      end
    end
    render :action => :index
  end

  def index

  end
end


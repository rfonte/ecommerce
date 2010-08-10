class ForgotPassController < ApplicationController
  def new

  end

  def index
    email = params[:email_forgot_password]
    user_valid = ForgotPass.user_mail_is_valid?(email)

    if user_valid
      #Efetuar envio de recuperação de senha
      flash[:forgot_pass_message] = "Recuperação de senha enviada !"
    else
      flash[:forgot_pass_message] = "Usuário não encontrado! Tente Novamente!"
    end
    render :action => :index
  end
end


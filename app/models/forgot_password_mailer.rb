class ForgotPasswordMailer < ActionMailer::Base
  def forgot_pass(email,user_name)
    recipients user_name
    subject "Ecomerce - Lembrete de Senha"
    from "rodrigo.fonte@yahoo.com.br"
    body "email" => email, "user_name" => user_name
    content_type "text/html"
  end
end


class Email < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.email.enviar.subject
  #
  def enviar
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end

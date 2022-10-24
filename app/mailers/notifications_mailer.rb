class NotificationsMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifications_mailer.contact_request.subject
  #
  def contact_request
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end

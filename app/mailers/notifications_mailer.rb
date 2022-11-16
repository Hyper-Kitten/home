class NotificationsMailer < ApplicationMailer
  def contact_request(contact_request)
    @contact_request = contact_request

    mail to: @contact_request.email, subject: "Contact Request From Hyper Kitten"
  end
end

class ContactRequestsController < ApplicationController
  def new
    @contact_request = ContactRequest.new
  end

  def create
    @contact_request = ContactRequest.new(contact_request_params)
    if @contact_request.save
      redirect_to root_path, notice: "Your message has been sent."
    else
      render action: "new"
    end
  end

  private

  def contact_request_params
    params.require(:contact_request).permit(:name, :email, :phone, :message)
  end
end

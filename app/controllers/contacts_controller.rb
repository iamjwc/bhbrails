
class ContactsController < ApplicationController
  def create
    @contact = Contact.new(params[:contact])
    if @contact.valid?
      MailingListMailer.notify(@contact).deliver
      @contact.save
    else
      flash[:error] = "Invalid"
    end

    redirect_to home_url
  end

end



class ContactsController < ApplicationController
  def create
    @contact = Contact.find_by_email(params[:contact][:email])

    if @contact
      @contact.update_attributes(params[:contact])
    else
      @contact = Contact.new(params[:contact])
      if @contact.valid?
        @contact.save

        MailingListMailer.notify_admin(@contact).deliver
        MailingListMailer.notify_user(@contact).deliver

        flash[:info] = "Thank you for joining our mailing list"
      else
        flash[:error] = "Invalid Email"
      end
    end

    redirect_to home_url
  end

  def index
    @contacts = Contact.all
  end

end


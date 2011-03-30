class MailingListMailer < ActionMailer::Base
  default :from => "thebirdhiveboys@gmail.com"

  def notify_admin(contact)
    @contact = contact

    if @contact.is_street_team
      @subject = "Street Team Subscription (#{[@contact.name, @contact.email].compact.join(" ")})"
    else
      @subject = "Mailing List Subscription (#{[@contact.name, @contact.email].compact.join(" ")})"
    end

    mail :to => "thebirdhiveboys+subscription@gmail.com", :subject => @subject
  end

  def notify_user(contact)
    @contact = contact

    if @contact.is_street_team
      @subject = "Thanks for joining the street team!"
    else
      @subject = "Thanks for joining our mailing list!"
    end

    mail :to => @contact.email, :subject => @subject
  end
end


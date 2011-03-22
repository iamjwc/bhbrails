class MailingListMailer < ActionMailer::Base
  default :from => "thebirdhiveboys@gmail.com"

  def notify(contact)
    subject = if contact.is_street_team
      "Street Team Subscription (#{[contact.name, contact.email].compact.join(" ")})"
    else
      "Mailing List Subscription (#{[contact.name, contact.email].compact.join(" ")})"
    end

    mail :to => "thebirdhiveboys+subscription@gmail.com", :subject => subject
  end
end


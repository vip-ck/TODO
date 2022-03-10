class NotifyMailer < ApplicationMailer
  def users_deadlines(user, events)
    @events = events
    attachments['151.jpg'] = File.read(Rails.root.join('public/151.jpg').to_s)
    mail(
      to: user.email,
      subject: I18n.t('emails.subjects.user_deadlines')
    )

  end
end

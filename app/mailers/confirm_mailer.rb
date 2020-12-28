class ConfirmMailer < ApplicationMailer
  def confirm_mail(confirm)
    @confirm = confirm
    mail to: "m.takayama0929@gmail.com", subject: "投稿確認メール"
  end

end

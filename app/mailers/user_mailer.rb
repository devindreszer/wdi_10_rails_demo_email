class UserMailer < ActionMailer::Base
  # By default the email is from GA
  default from: "ga@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.signup_confirmation.subject
  #
  def signup_confirmation(user_id)
    # Will make the newly registered yser available to the view
    # that will generate the email content
    @user = User.find(user_id)

    mail to: @user.email, subject: "Sign Up Confirmation"

  end
end

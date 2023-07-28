class UserMailer < ApplicationMailer
    default from: 'your_email@example.com'

    def hire_lawyer(lawyer_email,user_email)
        @user_email = user_email
        mail(to: lawyer_email, subject:'you have been hired!')
    end
end

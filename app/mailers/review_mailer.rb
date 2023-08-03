class ReviewMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def new_review_notification(review)
    @review = review
    @lawyer = review.lawyer_detail.user

    mail(to: @lawyer.email, subject: 'New Review Added')
  end
end

class MyWorker
  include Sidekiq::Worker

  def perform(review_id)
    review = Review.find(review_id)
    ReviewMailer.new_review_notification(review).deliver_now
  end
end

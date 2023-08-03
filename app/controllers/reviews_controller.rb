class ReviewsController < ApplicationController
  def create
    @lawyer_detail = LawyerDetail.find(params[:lawyer_detail_id])
    @review = @lawyer_detail.reviews.new(review_params)
    @review.user = current_user

    if @review.save
      redirect_to @lawyer_detail, notice: 'Review was successfully created.'
    else
      render 'lawyer_details/show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end

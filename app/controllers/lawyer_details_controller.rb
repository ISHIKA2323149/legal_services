class LawyerDetailsController < ApplicationController
  before_action :authenticate_user!, except: %i[index show]

  def index
    @lawyer_details = LawyerDetail.all
  end

  def show
    @lawyer_detail = LawyerDetail.find(params[:id])
  end

  def new
    @lawyer_detail = LawyerDetail.new
  end

  def create
    @lawyer_detail = LawyerDetail.new(set_params)
    @lawyer_detail.user_id = current_user.id

    if @lawyer_detail.save
      redirect_to root_path
    else
      render action: :new, status: :unprocessable_entity
    end
  end

  private

  def set_params
    params.require(:lawyer_detail).permit(:license_no, :practice_court_name, :practice_field_name, :experience, :city,
                                          :consultation_fees)
  end
end

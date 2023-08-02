class CasesController < ApplicationController
  before_action :authenticate_user!, except: %i[index show]
  before_action :find_case, only: [:show, :edit, :update, :destroy]

  def index
    @cases = Case.all
  end

  def show
  end

  def edit
  end

  def new
    @case = current_user.cases.build
  end

  def create
    @case = current_user.cases.build(set_params)

    if @case.save
      redirect_to root_path
    else
      render action: :new, status: :unprocessable_entity
    end
  end

  def update
    if @case.update(set_params)
      redirect_to @case
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @case.destroy
    redirect_to root_path, status: :see_other
  end

  private

  def set_params
    params.require(:case).permit(:case_name, :case_no, :case_description, :case_status, :court_name, :filing_date, :case_category, :additional_notes, :Hearing_date)
  end

  def find_case
    @case = Case.find(params[:id])
  end
end

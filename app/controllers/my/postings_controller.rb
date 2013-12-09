class My::PostingsController < ApplicationController
  before_action :current_user
  # before_action :require_posting, except: [:index, :new, :create]

  def index
    @user = User.find_by(params[:id])
    @postings = Posting.where(params[:user_id])
  end

  def new
    @posting = Posting.new()
  end

  def edit
  end

  def destroy
    @postings = Posting.find(params[:id])
    @postings.destroy
    redirect_to :back
  end

  def show
  end

  def update 
    if @posting.update_attributes(params[:posting])
      redirect_to [:my, :postings], notice: "Job Posting Updated"
    else
      render :edit
    end
  end

  def create
    @posting = Posting.new(posting_params)
    if @posting.save
      redirect_to [:my, :postings], notice: "Job Posting Created, Email Confirmation will arrive shortly"
    else
      render :new
    end
  end

  private

  def posting_params
    params.require(:posting).permit(:title, :company, :location, :job_type, :job_field, :catagory, :tags, 
      :updated_at, :user_id, :job_description, :job_responsibilities, :required_experience, 
      :further_information, :compensation)
  end

  # def require_posting
  #   @postings = @user.postings.find(params[:id])
  # end
end

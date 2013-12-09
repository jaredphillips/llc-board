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
    @posting = @user.projects.build(params[:posting])
    if @posting.save
      redirect_to [:my, :postings], notice: "Job Posting Created, Email Confirmation will arrive shortly"
    else
      render :new
    end
  end

  protected

  # def require_posting
  #   @postings = @user.postings.find(params[:id])
  # end
end

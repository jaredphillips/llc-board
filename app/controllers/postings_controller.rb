class PostingsController < ApplicationController
  def new
  end

  def create
  end

  def update
  end

  def destroy
    redirect_to :back
  end

  def edit
  end

  def index
    @user = User.find_by(params[:id])
    @postings = Posting.paginate(page: params[:page], per_page: 12)
  end

  def show
  end
end

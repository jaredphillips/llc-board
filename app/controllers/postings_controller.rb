class PostingsController < ApplicationController
	
  def index
    @user = User.find_by(params[:id])
    @postings = Posting.paginate(page: params[:page], per_page: 12)
  end

  def show
    @posting = Posting.find(params[:id])
  end
end

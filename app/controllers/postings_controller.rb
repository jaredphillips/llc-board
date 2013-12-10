class PostingsController < ApplicationController
	
  def index
  	@tags = Posting.tag_counts
  	if params[:tag]
      @postings = Posting.tagged_with(params[:tag]).paginate(page: params[:page], per_page: 12)
    else
	    @user = User.find_by(params[:id])
	    @postings = Posting.order('created_at DESC').paginate(page: params[:page], per_page: 12)
    end  
  end

  def show
    @posting = Posting.find(params[:id])
  end
end

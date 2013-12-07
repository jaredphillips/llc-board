class PostingsController < ApplicationController
  def new
  end

  def create
  end

  def update
  end

  def destroy
  end

  def edit
  end

  def index
    @postings = Posting.paginate(page: params[:page], per_page: 12)
  end

  def show
  end
end

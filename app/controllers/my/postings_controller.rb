class My::PostingsController < ApplicationController
  def index
    @postings = Posting.where(user: current_user)
  end

  def new
    @posting = Posting.new()
  end

  def create
    @posting = Posting.new(user_id: current_user.id,
                            title: params[:posting][:title],
                            location: params[:posting][:location],
                            company: params[:posting][:company])
    if @posting.save 
      redirect_to my_postings_path, notice: "Job Posting Created, Email Confirmation will arrive shortly"
    else
      render new_my_posting_path
    end
  end

  def edit
  end

  def show
  end

  def destroy
    @postings = Posting.find(params[:id])
    @postings.destroy
    redirect_to :back
  end

  private

  def posting_params
    params.require(:posting).permit(:title, :company, :location, :job_type, :job_field, :catagory, :tags, :updated_at, :user_id, :job_description, :job_responsibilities, :required_experience, :further_information, :compensation)
  end
end


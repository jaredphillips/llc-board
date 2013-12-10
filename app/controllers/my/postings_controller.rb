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
                           location: params[:posting][:location].capitalize,
                           company: params[:posting][:company],
                           job_type: params[:posting][:job_type],
                           catagory: params[:posting][:catagory],
                           tag_list: params[:posting][:tag_list].capitalize,
                           job_description: params[:posting][:job_description],
                           job_responsibilities: params[:posting][:job_responsibilities],
                           required_experience: params[:posting][:required_experience],
                           further_information: params[:posting][:further_information],
                           compensation: params[:posting][:compensation])
    if @posting.save 
      redirect_to my_postings_path, notice: "Job Posting Created, Email Confirmation will arrive shortly"
    else
      render new_my_posting_path
    end
  end

  def edit
   @posting = Posting.find(params[:id])
  end

  def update
    @posting = Posting.find(params[:id])
    if @posting.update_attributes(user_id: current_user.id,
                       title: params[:posting][:title],
                       location: params[:posting][:location].capitalize,
                       company: params[:posting][:company],
                       job_type: params[:posting][:job_type],
                       catagory: params[:posting][:catagory],
                       tag_list: params[:posting][:tag_list].capitalize,
                       job_description: params[:posting][:job_description],
                       job_responsibilities: params[:posting][:job_responsibilities],
                       required_experience: params[:posting][:required_experience],
                       further_information: params[:posting][:further_information],
                       compensation: params[:posting][:compensation])
      redirect_to my_postings_path, notice: 'Posting was successfully updated.'
    else
      render edit_my_posting_path(@posting), notice: "Posting was not updated, try again"
    end
  end

  def show
  end

  def destroy
    @postings = Posting.find(params[:id])
    @postings.destroy
    redirect_to :back
  end

  private

  # def posting_params
  #   params.require(:posting).permit(:title, :company, :location, :job_type, :job_field, :catagory, :tags, :updated_at, :user_id, :job_description, :job_responsibilities, :required_experience, :further_information, :compensation)
  # end
end


class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :gram

  def create
    @comment = @gram.comments.create(comment_params.merge(user: current_user))
    if @comment.valid?
      redirect_to root_path
    else
      redirect_to root_path, alert: 'Could not save comment'
    end
  end

  private # >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

  def comment_params
    params.require(:comment).permit(:message)
  end

  def gram
    @gram ||= Gram.find_by_id(params[:gram_id])
    render plain: 'Gram with that ID not found', status: :not_found if @gram.blank?
  end
end

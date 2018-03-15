class CommentsController < ApplicationController
  def create
    #build automatically associate a model with another
    @comment = current_user.comments.build(comment_params)
  end

  private
  def comment_params
    params.require(:comment).permit(:content)
  end
end

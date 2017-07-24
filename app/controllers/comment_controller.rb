class CommentController < ApplicationController
  before_action :set_comment!, only: [:show, :destroy]

  def create
  end

  def show
  end

  def destroy
  end

  private

    def comment_params
      params.require(:comment).permit(:content, :user_id, :trail_id)
    end

    def set_comment!
      @comment = Comment.find(params[:id]);
    end
end

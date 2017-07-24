class CommentsController < ApplicationController
  before_action :set_comment!, only: [:show, :destroy]

  def create
    @comment = Comment.create(comment_params);
    render json: @comment
  end

  def show
    render json: @comment
  end

  def destroy
    @comment.destroy
  end

  private

    def comment_params
      params.require(:comment).permit(:content, :user_id, :trail_id)
    end

    def set_comment!
      @comment = Comment.find(params[:id]);
    end
end

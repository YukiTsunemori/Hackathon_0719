class RepliesController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @reply = @post.replies.build(reply_params)
    # @replyies = @post.replies.ordered
    if @reply.save
      redirect_to post_path(@post), notice: "Reply was successfully created."
    else
      flash.now[:alert] = "Reply could not be created."
      render @post, status: :unprocessable_entity
    end
  end

  def destroy
    @reply = Reply.find(params[:id])
    @reply.destroy
    redirect_to post_path(@reply)
  end

  private
    def reply_params
      params.require(:reply).permit(:text, :user_id).merge(post_id: params[:post_id])
    end
end

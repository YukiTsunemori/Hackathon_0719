class PostsController < ApplicationController
  def index
    @posts = Post.all
    # @posts = Post.joins(:user).select("posts.id, posts.text, posts.created_at, users.name as post_user").post_ordered
    # Userモデルが作成されたら上の1行に切り替える。
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new
    # @post = current_user.post.build(post_params) userとpostの関連付けが終わったらこれを追加。
    post = Post.new(post_params)
    if post.save
      redirect_to root_path, notice: "Post was successfully created."
    else
      flash.now[:alert] = "Post could not be created."
      render :index, status: :unprocessable_entity
    end
  end

  def show
    @post = Post.find(params[:id])
    # @replies = Reply.joins(:user).select("replies.id, replies,text, replies.created_at, users.name as reply_user").reply_ordered
    # @reply = @post.replies.build
    # PostとUserの関連が終わったら上2行を追加
  end

  def destroy
  end

  def update
  end

  private
  def post_params
      params.require(:post).permit(:text)
    # Userモデルが作成されたら、permitの引数に:post_userを追加する。
  end
end

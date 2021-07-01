class PostsController < ApplicationController
  layout "three_column"
  def index
    @posts = Post.joins(:user).select("posts.title, posts.content, users.first_name, users.last_name")
    @users = User.all
  end

  def create
    Post.create(posts_params)
    flash[:notice] = "Post has been added successfully"
    redirect_to "/posts"
  end

  private
  def posts_params
    params.require(:post).permit(:title,:content,:user_id)
  end
end

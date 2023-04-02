class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  def index
    @posts = Post.all
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    # binding.pry
    @post.save
    redirect_to posts_path, notice: "投稿しました"
  end

  def edit 
  end
  
  def update
    @post.update(post_params)
    if @post.update(post_params)
      redirect_to posts_path, notice: '更新しました'
    else
      render :edit
    end
  end

  def destroy
    if @post.destroy
      redirect_to posts_path, notice: "削除しました"
    else
      render :new
    end
  end


  private
    def post_params
      params.require(:post).permit(:title, :body, :image)
    end

    def set_post
      @post = Post.find(params[:id])
    end
end

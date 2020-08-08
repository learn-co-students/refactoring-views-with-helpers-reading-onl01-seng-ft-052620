class PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
	end

	def create
	  @post = Post.new(params)
	  @post.save
	  redirect_to post_path(@post)
	end

	def update
	  @dick = Post.find(params[:id])
	  @dick.update(params.require(:post).permit(:title, :description))
	  redirect_to post_path(@dick)
	end

	def edit
	  @dick = Post.find(params[:id])
	end
end

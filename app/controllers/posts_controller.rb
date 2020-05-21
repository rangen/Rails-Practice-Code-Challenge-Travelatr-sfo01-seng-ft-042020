class PostsController < ApplicationController
    def show
        @post = Post.find(params[:id])
    end

    def new
        @post = Post.new
    end

    def increment_like
        post = Post.find(params[:id])
        post.increment_like
        redirect_to post
    end

    def create
        
    end

    def edit
        @post = Post.find(params[:id])
    end

    def update
        
    end

private
    def post_params
        params.require(:post).permit(:title, :content)
    end
end
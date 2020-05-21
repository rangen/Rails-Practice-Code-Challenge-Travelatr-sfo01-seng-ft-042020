class PostsController < ApplicationController
    def show
        @post = Post.find(params[:id])
    end

    def new
        @post = Post.new
    end

    def increment_like
        Post.find(params[:id]).increment_like
        redirect_to Post.find(params[:id])
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
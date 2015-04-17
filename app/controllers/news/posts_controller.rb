module News
  class PostsController < ApplicationController
    before_action :set_post, only: [:show]

    def index
      @posts = Post.published.paginate(:page => params[:page], :per_page => 20)
    end


    def show

    end

    private

    def set_post
      @post = Post.find(params[:id])
    end
  end
end
module News
  class PostsController < ApplicationController
    before_action :set_post, only: [:show]

    def index
      @posts = Post.published.paginate(:page => params[:page], :per_page => 5)
      @title = 'Новости клуба'
    end


    def show
      @meta_keywords = @post.meta_keywords if @post.meta_keywords.present?
      @title = @post.title
    end

    private

    def set_post
      @post = Post.find(params[:id])
    end
  end
end
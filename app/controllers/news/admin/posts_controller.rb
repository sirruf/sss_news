module News
  module Admin
    class PostsController < ApplicationController
      before_filter :authenticate_admin! if defined? Devise
      before_action :set_post, only: [:show, :edit, :update, :destroy]

      layout 'admin/control'


      def index
        @posts = Post.all.paginate(:page => params[:page], :per_page => 20)
      end

      def new
        @post = Post.new
      end

      def show
      end

      def edit
      end

      def create
        @post = Post.new(post_params)

        respond_to do |format|
          if @post.save
            format.html { redirect_to edit_admin_post_path(@post), notice: 'Post was successfully created.' }
            format.json { render action: 'show', status: :created, location: @post }
          else
            format.html { render action: 'new' }
            format.json { render json: @post.errors, status: :unprocessable_entity }
          end
        end
      end

      def update
        respond_to do |format|
          if @post.update(post_params)
            format.html { redirect_to admin_post_path(@post), notice: 'Post was successfully updated.' }
            format.json { head :no_content }
          else
            format.html { render action: 'edit' }
            format.json { render json: @post.errors, status: :unprocessable_entity }
          end
        end
      end

      def destroy
        @post.destroy
        respond_to do |format|
          format.html { redirect_to admin_posts_url }
          format.json { head :no_content }
        end
      end

      private

      def post_params
        params.require(:post).permit(:title, :body, :hot, :published, :hot_title, :hot_gallery_image_id, :hot_gallery_image_size, :main_gallery_image_id, :main_gallery_image_size, :meta_keywords )
      end

      def set_post
        @post = Post.find(params[:id])
      end

    end
  end
end
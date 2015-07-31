require 'rails_helper'
module News
  RSpec.describe Admin::PostsController, type: :controller do
    routes { News::Engine.routes }

    describe  'Render Administrative actions' do

      it 'index' do
        get :index
        expect(response).to have_http_status(200)
        expect(response).to render_template('index')
      end

      it 'new' do
        get :new
        expect(response).to have_http_status(200)
        expect(response).to render_template('new')
      end

      it 'show' do
        post = FactoryGirl.create :post
        get :show, id: post.id
        expect(response).to have_http_status(200)
        expect(response).to render_template('show')
      end

      it 'edit' do
        post = FactoryGirl.create :post
        get :edit, id: post.id
        expect(response).to have_http_status(200)
        expect(response).to render_template('edit')
      end
    end

  end
end



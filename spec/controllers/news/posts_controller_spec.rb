require 'rails_helper'

module News
  RSpec.describe PostsController, type: :controller do
    routes { News::Engine.routes }

    describe 'Render User actions' do

      it 'index' do
        get :index
        expect(response).to have_http_status(200)
        expect(response).to render_template('index')
      end

      it 'show' do
        post = FactoryGirl.create :post
        get :show, id: post.id
        expect(response).to have_http_status(200)
        expect(response).to render_template('show')
      end

    end
  end
end

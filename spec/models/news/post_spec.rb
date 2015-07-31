require 'rails_helper'

module News
  describe Post do
    let(:factory_instance) { FactoryGirl.build(:post) }

    describe 'public instance methods' do
      context 'responds to its methods' do
        it { expect(factory_instance).to respond_to(:hot_gallery_image_title) }
        it { expect(factory_instance).to respond_to(:main_gallery_image_title) }
        it { expect(factory_instance).to respond_to(:hot_gallery_image_url) }
        it { expect(factory_instance).to respond_to(:main_gallery_image_url) }
        it { expect(factory_instance).to respond_to(:full_hot_gallery_image_url) }
        it { expect(factory_instance).to respond_to(:full_main_gallery_image_url) }
      end
    end

    describe 'scopes' do
      it '.published returns all published posts' do
        published_post = FactoryGirl.create(:post, published: true)
        expect(Post.published.first).to eq(published_post)
      end
      it '.hot_published returns all hot_published posts' do
        published_post = FactoryGirl.create(:post, published: true, hot: true)
        expect(Post.hot_published.first).to eq(published_post)
      end

    end
  end
end


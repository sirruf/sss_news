FactoryGirl.define do
  factory :post, :class => 'News::Post' do
    title 'New post'
    body 'Test post body'
    published true
  end
end

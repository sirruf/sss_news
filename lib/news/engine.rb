module News
  class Engine < ::Rails::Engine
    isolate_namespace News
    config.generators do |g|
      g.test_framework :rspec
      g.fixture_replacement :factory_girl, :dir=>"spec/factories"
    end
    config.to_prepare do
      News::ApplicationController.helper Rails.application.helpers
    end
  end
  require 'rubygems'
  require 'russian'
  require 'acts_as_list'
  require 'will_paginate'
  require 'font-awesome-rails'
end

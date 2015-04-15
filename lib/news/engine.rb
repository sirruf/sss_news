module News
  class Engine < ::Rails::Engine
    isolate_namespace News
  end
  require 'rubygems'
  require 'russian'
  require 'acts_as_list'
  require 'will_paginate'
  require 'font-awesome-rails'
end

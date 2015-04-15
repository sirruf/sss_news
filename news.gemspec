$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "news/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "news"
  s.version     = News::VERSION
  s.authors     = ['Artem Kolesnikov']
  s.email       = ['sirruf@me.com']
  s.homepage    = 'http://it-assist.info/sss'
  s.summary     = 'SSS News Module'
  s.description = 'Simple Site System News Module'

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0.8"
  s.add_dependency 'russian'
  s.add_dependency 'acts_as_list'
  s.add_dependency 'will_paginate'
  s.add_dependency 'font-awesome-rails'

  s.add_development_dependency "sqlite3"
end

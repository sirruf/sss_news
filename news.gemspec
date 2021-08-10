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
  s.licenses = ['MIT']

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency('rails', '~> 4.2')
  s.add_dependency('russian', '~> 0.6')
  s.add_dependency('acts_as_list', '~> 0.7')
  s.add_dependency('will_paginate', '~> 3.1')
  s.add_dependency('font-awesome-rails', '~> 4.6')
  s.add_dependency('cld2', '~> 1.0.3')
  s.add_dependency('rspec-rails', '~> 3.4')
  s.add_dependency('factory_girl_rails', '~> 4.6')

  s.add_development_dependency('sqlite3', '~> 1.3')
end

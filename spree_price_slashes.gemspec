$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'spree_price_slashes/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'spree_price_slashes'
  s.version     = SpreePriceSlashes::VERSION
  s.authors     = ['Stuart Bates']
  s.email       = ['stuart@builtbyclick.com']
  s.homepage    = 'http://builtbyclick.com'
  s.summary     = 'Add discounted prices to specific products.'
  s.description = 'Add discounted prices to specific products and advertise these to users on the frontend'

  s.files = Dir['{app,config,db,lib}/**/*'] + ['MIT-LICENSE', 'Rakefile', 'README.rdoc']
  s.test_files = Dir['test/**/*']

  s.add_dependency 'rails', '~> 3.2.17'
  s.add_dependency 'spree-core', '~>2.0.0'
  s.add_development_dependency 'sqlite3'
end
Gem::Specification.new do |s|
  s.name    = 'pjax_rails'
  s.version = '0.1.10'
  s.author  = 'David Heinemeier Hansson (PJAX by Chris Wanstrath)'
  s.email   = 'david@loudthinking.com'
  s.summary = 'PJAX integration for Rails 3.1+'

  s.add_dependency 'jquery-rails'

  s.files = Dir["#{File.dirname(__FILE__)}/**/*"]
end

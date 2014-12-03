Dir["lib/**/*.rb"].each {|file| require_relative "../#{file}" }

RSpec.configure do |config|
  config.mock_framework = :rspec
  config.full_backtrace = true
end

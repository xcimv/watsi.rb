require "webmock/rspec"

if ENV["COVERAGE"]
  require "simplecov"

  SimpleCov.start
  puts "simplecov"
end

# Requires supporting files with custom matchers and macros, etc,
# in ./support/ and its subdirectories.
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }

$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)
require "watsi"

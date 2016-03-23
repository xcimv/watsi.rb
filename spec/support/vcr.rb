require "vcr"

VCR.configure do |c|
  c.cassette_library_dir = "cassettes"
  c.hook_into :webmock
  c.allow_http_connections_when_no_cassette = false
end

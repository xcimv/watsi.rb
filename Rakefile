require "bundler/gem_tasks"
require "rspec/core/rake_task"
require "rubocop/rake_task"
require "fasterer/file_traverser"

RSpec::Core::RakeTask.new(:spec)
RuboCop::RakeTask.new

task default: :spec

desc "Run RSpec and generate a coverage report"
task :coverage do
  ENV["COVERAGE"] = "true"
  Rake::Task["spec"].execute
end

desc "Run fasterer"
task :fasterer do
  path = "lib"
  file_traverser = Fasterer::FileTraverser.new path
  file_traverser.traverse
end

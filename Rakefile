require "bundler/gem_tasks"
require 'rake/testtask'

Rake::TestTask.new do |t|
  t.test_files = Dir.glob('spec/**/*_spec.rb')
  t.libs << "spec"
  t.libs << "lib"
end

desc "Run tests"
task :default => :test

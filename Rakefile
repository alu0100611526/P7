
task :default => :bin


desc "Run lib/fraccion.rb"
task :bin do
  sh "cd spec \n rspec -I. fraccion_spec.rb"
end

desc "Run tests with --format documentation"
task :test do

  sh "cd spec \n rspec -I. fraccion_spec.rb --format documentation"
end

desc "Run tests with format: html"
task :thtml do
  sh "cd spec \n rspec fraccion_spec.rb --format html"
end

desc "Build and serve Jekyll site locally"
task :serve do
  puts "Starting up production Jekyll site server..."
  system "jekyll serve --watch"
end

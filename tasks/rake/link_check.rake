task :link_check => [:build] do
  system "htmlproofer #{RESULTS} --only-4xx --http-status-ignore 429"
end

Smoke.data(:twitter) do
  prepare do
    url "http://search.twitter.com/search.json?q=#{term}"
  end
  
  path :results
end

Smoke.join(:twitter) do
  name :stream
end
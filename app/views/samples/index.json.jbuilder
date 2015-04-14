json.array!(@samples) do |sample|
  json.extract! sample, :id, :time, :data
  json.url sample_url(sample, format: :json)
end

json.array!(@lakes) do |lake|
  json.extract! lake, :id, :lkname
  json.url lake_url(lake, format: :json)
end

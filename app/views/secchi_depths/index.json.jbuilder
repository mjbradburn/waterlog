json.array!(@secchi_depths) do |secchi_depth|
  json.extract! secchi_depth, :id, :sample_time, :secchi_depth_ft, :weather, :comments, :lake_id
  json.url secchi_depth_url(secchi_depth, format: :json)
end

json.array!(@chloros) do |chloro|
  json.extract! chloro, :id, :sample_time, :event, :comp_sample_depth, :weather, :comments, :secchi_depth_id, :lake_id
  json.url chloro_url(chloro, format: :json)
end

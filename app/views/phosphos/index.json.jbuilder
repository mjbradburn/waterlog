json.array!(@phosphos) do |phospho|
  json.extract! phospho, :id, :sample_time, :season, :weather, :ice_out, :sample_submit, :comments, :lake_id
  json.url phospho_url(phospho, format: :json)
end

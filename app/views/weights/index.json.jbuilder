json.array!(@weights) do |weight|
  json.extract! weight, :id, :daily_weight, :date
  json.url weight_url(weight, format: :json)
end

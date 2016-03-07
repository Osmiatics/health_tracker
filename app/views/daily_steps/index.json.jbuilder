json.array!(@daily_steps) do |daily_step|
  json.extract! daily_step, :id, :amount, :date
  json.url daily_step_url(daily_step, format: :json)
end

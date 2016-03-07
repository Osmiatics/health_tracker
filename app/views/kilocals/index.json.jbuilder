json.array!(@kilocals) do |kilocal|
  json.extract! kilocal, :id, :amount, :date
  json.url kilocal_url(kilocal, format: :json)
end

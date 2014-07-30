json.array!(@employees) do |employee|
  json.extract! employee, :id, :name, :oow, :rtw
  json.url employee_url(employee, format: :json)
end

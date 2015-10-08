json.array!(@organizations) do |organization|
  json.extract! organization, :id, :name, :location, :industry, :about, :year_founded, :type, :size, :website
  json.url organization_url(organization, format: :json)
end

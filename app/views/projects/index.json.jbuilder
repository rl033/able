json.array!(@projects) do |project|
  json.extract! project, :id, :name, :description, :industry, :location, :total_investment, :start_date, :views, :rating
  json.url project_url(project, format: :json)
end

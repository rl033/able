json.array!(@students) do |student|
  json.extract! student, :id, :frist_name, :last_name, :location, :industry
  json.url student_url(student, format: :json)
end

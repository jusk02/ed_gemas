json.array!(@assignments) do |assignment|
  json.extract! assignment, :id, :name, :code
  json.url assignment_url(assignment, format: :json)
end

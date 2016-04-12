json.array!(@techers_assignments) do |techers_assignment|
  json.extract! techers_assignment, :id, :teacher_id, :assignment_id
  json.url techers_assignment_url(techers_assignment, format: :json)
end

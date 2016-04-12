json.array!(@students_assignments) do |students_assignment|
  json.extract! students_assignment, :id, :student_id, :assignment_id
  json.url students_assignment_url(students_assignment, format: :json)
end

json.array!(@homeworks) do |homework|
  json.extract! homework, :id, :message, :final_date, :assignment_id
  json.url homework_url(homework, format: :json)
end

json.array!(@responses) do |response|
  json.extract! response, :id, :message, :grade, :homework_id
  json.url response_url(response, format: :json)
end

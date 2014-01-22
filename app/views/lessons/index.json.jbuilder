json.array!(@lessons) do |lesson|
  json.extract! lesson, :id, :title, :summary, :lesson_number, :workshop_id
  json.url lesson_url(lesson, format: :json)
end

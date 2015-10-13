json.array!(@feedbacks) do |feedback|
  json.extract! feedback, :id, :bind_id, :responce_click, :responce_close, :time_click, :time_close
  json.url feedback_url(feedback, format: :json)
end

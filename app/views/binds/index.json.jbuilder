json.array!(@binds) do |bind|
  json.extract! bind, :id, :segment_id, :con_action_id, :feedback_id
  json.url bind_url(bind, format: :json)
end

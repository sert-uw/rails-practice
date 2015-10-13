json.array!(@con_actions) do |con_action|
  json.extract! con_action, :id, :name, :target_page, :text, :image_path, :link
  json.url con_action_url(con_action, format: :json)
end

json.array!(@writes) do |write|
  json.extract! write, :id, :user_id, :board_id, :body
  json.url write_url(write, format: :json)
end

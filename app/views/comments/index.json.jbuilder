json.array!(@comments) do |comment|
  json.extract! comment, :id, :content, :commentable_id, :commentable_type, :survey_item_id
  json.url comment_url(comment, format: :json)
end

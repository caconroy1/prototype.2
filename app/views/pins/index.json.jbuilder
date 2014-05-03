json.array!(@pins) do |pin|
  json.extract! pin, :id, :approval_status, :author, :user_id, :url, :title, :social_snippet, :content_platform, :content_type, :description, :author_notes, :editor_notes, :keyword_checklist, :image
  json.url pin_url(pin, format: :json)
end

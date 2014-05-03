json.array!(@facebook_statuses) do |facebook_status|
  json.extract! facebook_status, :id, :user_id, :approval_status, :title, :facebook_status, :author, :content_platform, :content_type, :author_notes, :editor_notes, :keyword_checklist
  json.url facebook_status_url(facebook_status, format: :json)
end

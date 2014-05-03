json.array!(@instagram_images) do |instagram_image|
  json.extract! instagram_image, :id, :user_id, :image, :approval_status, :title, :social_snippet, :author, :content_platform, :content_type, :associated_text, :author_notes, :editor_notes, :keyword_checklist
  json.url instagram_image_url(instagram_image, format: :json)
end

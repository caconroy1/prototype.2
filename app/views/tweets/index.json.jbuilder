json.array!(@tweets) do |tweet|
  json.extract! tweet, :id, :user_id, :tweet, :approval_status, :title, :author, :content_platform, :content_type, :image, :url, :author_notes, :editor_notes, :keyword_checklist
  json.url tweet_url(tweet, format: :json)
end

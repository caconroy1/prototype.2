json.array!(@wordpress_blog_posts) do |wordpress_blog_post|
  json.extract! wordpress_blog_post, :id, :user_id, :blog_post, :featured_image, :approval_status, :social_snippet, :author, :content_platform, :content_type, :author_notes, :editor_notes, :keyword_checklist
  json.url wordpress_blog_post_url(wordpress_blog_post, format: :json)
end

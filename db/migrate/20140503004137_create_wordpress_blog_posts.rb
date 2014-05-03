class CreateWordpressBlogPosts < ActiveRecord::Migration
  def change
    create_table :wordpress_blog_posts do |t|
      t.references :user, index: true
      t.text :blog_post
      t.binary :featured_image
      t.string :approval_status
      t.text :social_snippet
      t.string :author
      t.string :content_platform
      t.string :content_type
      t.text :author_notes
      t.text :editor_notes
      t.text :keyword_checklist

      t.timestamps
    end
  end
end

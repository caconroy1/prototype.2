class CreateInstagramImages < ActiveRecord::Migration
  def change
    create_table :instagram_images do |t|
      t.references :user, index: true
      t.binary :image
      t.text :approval_status
      t.string :title
      t.text :social_snippet
      t.string :author
      t.string :content_platform
      t.string :content_type
      t.text :associated_text
      t.text :author_notes
      t.text :editor_notes
      t.text :keyword_checklist

      t.timestamps
    end
  end
end

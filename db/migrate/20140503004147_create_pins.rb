class CreatePins < ActiveRecord::Migration
  def change
    create_table :pins do |t|
      t.string :approval_status
      t.string :author
      t.references :user, index: true
      t.string :url
      t.string :title
      t.text :social_snippet
      t.string :content_platform
      t.string :content_type
      t.text :description
      t.text :author_notes
      t.text :editor_notes
      t.text :keyword_checklist
      t.binary :image

      t.timestamps
    end
  end
end

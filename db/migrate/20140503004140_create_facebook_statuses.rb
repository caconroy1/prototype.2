class CreateFacebookStatuses < ActiveRecord::Migration
  def change
    create_table :facebook_statuses do |t|
      t.references :user, index: true
      t.string :approval_status
      t.string :title
      t.text :facebook_status
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

class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.references :user, index: true
      t.text :tweet
      t.string :approval_status
      t.string :title
      t.string :author
      t.string :content_platform
      t.string :content_type
      t.binary :image
      t.string :url
      t.text :author_notes
      t.text :editor_notes
      t.text :keyword_checklist

      t.timestamps
    end
  end
end

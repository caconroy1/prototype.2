ActiveAdmin.register Pin do
  permit_params :approval_status, :author, :url, :title, :social_snippet, :content_platform, :content_type, :description, :author_notes, :editor_notes, :keyword_checklist, :image

  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  
end

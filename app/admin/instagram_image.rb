ActiveAdmin.register InstagramImage do
  permit_params :image, :approval_status, :title, :social_snippet, :author, :content_platform, :content_type, :associated_text, :author_notes, :editor_notes, :keyword_checklist

  
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

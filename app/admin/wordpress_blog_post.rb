ActiveAdmin.register WordpressBlogPost do
  permit_params :blog_post, :featured_image, :approval_status, :social_snippet, :author, :content_platform, :content_type, :author_notes, :editor_notes, :keyword_checklist

  
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

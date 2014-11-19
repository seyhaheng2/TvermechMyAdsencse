ActiveAdmin.register Post do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end

  permit_params :name, :image, :description, :video, :category_id, :user_id, :imagedescription, :countclick, :type_id
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end
  index do
    column :name 
    column :image do |img|
      image_tag img.image,size: "150x100"
    end
    column :description do |desc|
      truncate(desc.description,length: 100)
    end
    column :countclick
    column :category_id do |cat|
       cat.category.name
    end
    actions
  end


  form(:html => { :multipart => true }) do |f|
    f.inputs "Detail", :multipart => true do 
      f.input :name
      f.input :image, as: :file, hint: f.object.image.present? \
        ? f.template.image_tag(f.object.image)
    : f.template.content_tag(:span, "no cover page yet")
      f.input :video
      f.input :description, as: :ckeditor
      f.input :category
      f.input :user
  end
    f.actions
  end




end

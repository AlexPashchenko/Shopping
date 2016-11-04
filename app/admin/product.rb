ActiveAdmin.register Product do
  permit_params :title, :body, :price, :avatar, :category_id

  index do
    selectable_column
    id_column
    column :title
    column :body
    column :price
    column :category
    column :avatar do |im|
      image_tag im.avatar.url, size: "100x100"
    end
    column :created_at
    actions
  end

  filter :title
  filter :body
  filter :price
  filter :category
  filter :created_at


  form do |f|
    f.inputs "Product" do
      f.input :title
      f.input :body
      f.input :price
      f.input :category, :collection => @categories
      f.input :avatar
    end
    f.actions
  end

end


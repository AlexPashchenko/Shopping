ActiveAdmin.register Message do
  permit_params :text, :product_id, :user_id, :status

  index do
    selectable_column
    id_column
    column :text
    column :product_id
    column :user_id
    column :status
    column :created_at
    actions
  end

  filter :text
  filter :product_id
  filter :user_id
  filter :status
  filter :created_at


  form do |f|
    f.inputs "Message" do
      f.input :text
      f.input :status
    end
    f.actions
  end

end


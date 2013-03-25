ActiveAdmin.register Post do

  index do
    column :id
    column :title
    column :user
    column :replies_count
    column :view_count
    column :created_at
    column :updated_at
    default_actions
  end
  
end

ActiveAdmin.register Post do

  filter :board
  filter :user
  filter :title
  filter :created_at
  filter :updated_at

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

  show do
    h3 post.title
    div do
      simple_format post.content
    end
  end

  form do |f|
    f.inputs "Edit Post" do
      f.input :title, label:false
      f.input :content, :input_html => {:class => "ckeditor"}, label:false
      f.buttons
    end
  end
  
end

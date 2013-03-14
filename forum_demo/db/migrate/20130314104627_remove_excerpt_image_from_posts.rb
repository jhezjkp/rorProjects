class RemoveExcerptImageFromPosts < ActiveRecord::Migration
  def up
    remove_column :posts, :excerpt_image_file_name
    remove_column :posts, :excerpt_image_content_type
    remove_column :posts, :excerpt_image_file_size
    remove_column :posts, :excerpt_image_updated_at
  end

  def down
    add_column :posts, :excerpt_image_updated_at, :datetime
    add_column :posts, :excerpt_image_file_size, :integer
    add_column :posts, :excerpt_image_content_type, :string
    add_column :posts, :excerpt_image_file_name, :string
  end
end

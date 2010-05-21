class AddPostToMovies < ActiveRecord::Migration
  def self.up
    add_column :movies, :post_id, :integer
  end

  def self.down
    remove_column :movies, :post_id
  end
end

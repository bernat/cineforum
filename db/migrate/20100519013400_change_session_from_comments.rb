class ChangeSessionFromComments < ActiveRecord::Migration
  def self.up
    rename_column :comments, :session_id, :post_id
  end

  def self.down
		rename_column :comments, :post_id, :session_id
	end
end

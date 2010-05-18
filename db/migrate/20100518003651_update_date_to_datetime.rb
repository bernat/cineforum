class UpdateDateToDatetime < ActiveRecord::Migration
  def self.up
  	remove_column :sessions, :date
		add_column :sessions, :date, :datetime
	end

  def self.down
		remove_column :sessions, :date
		add_column :sessions, :date, :date
	end
end

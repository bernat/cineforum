class Post < ActiveRecord::Base
	validates_presence_of :title, :desc, :date
	validates_uniqueness_of :title
	
	has_many :comments, :dependent => :destroy
	has_many :movies, :dependent => :destroy
end

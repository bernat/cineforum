class Session < ActiveRecord::Base
	validates_presence_of :title, :desc, :date
	validates_uniqueness_of :title
	
	has_many :comments, :dependent => :destroy 
end

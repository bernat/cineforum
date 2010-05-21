class Movie < ActiveRecord::Base
	belongs_to :post
	
	validates :title, :presence => true, :uniqueness => true
	validates :desc, :presence => true
end

class Article < ActiveRecord::Base
	has_attached_file :pdf
  attr_accessible :body, :published, :title, :pdf
	
end

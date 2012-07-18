class Product < ActiveRecord::Base
  has_attached_file :picture
	has_attached_file :spec_sheet
  attr_accessible :category_id, :manufacturer_id, :model, :name, :picture, :description, :spec_sheet
  
 
  belongs_to :category
  belongs_to :manufacturer
  
  validates :name, :model, :category_id, :manufacturer_id, :presence => true
	
	validates_attachment :spec_sheet, 
		:content_type => { :content_type => "application/pdf" }
end

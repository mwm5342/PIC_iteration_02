class Manufacturer < ActiveRecord::Base
  attr_accessible :name, :website, :description, :logo
  has_attached_file :logo, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  has_many :products
	
	validates :name, :website, :description, :presence => true
	validates_format_of :website, :with => URI::regexp(%w(http https))
end
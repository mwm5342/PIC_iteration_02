class AddAttachmentLogoToManufacturers < ActiveRecord::Migration
  def self.up
    add_column :manufacturers, :logo_file_name, :string
    add_column :manufacturers, :logo_content_type, :string
    add_column :manufacturers, :logo_file_size, :integer
    add_column :manufacturers, :logo_updated_at, :datetime
  end

  def self.down
    remove_column :manufacturers, :logo_file_name
    remove_column :manufacturers, :logo_content_type
    remove_column :manufacturers, :logo_file_size
    remove_column :manufacturers, :logo_updated_at
  end
end

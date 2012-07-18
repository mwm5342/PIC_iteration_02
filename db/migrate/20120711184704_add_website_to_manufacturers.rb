class AddWebsiteToManufacturers < ActiveRecord::Migration
  def change
    add_column :manufacturers, :website, :string
  end
end

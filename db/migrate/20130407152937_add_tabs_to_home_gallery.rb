class AddTabsToHomeGallery < ActiveRecord::Migration
  def change
    add_column :home_galleries, :first_tab, :boolean
    add_column :home_galleries, :second_tab, :boolean
    add_column :home_galleries, :third_tab, :boolean
  end
end

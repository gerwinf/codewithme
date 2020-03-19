class AddNameToGroup < ActiveRecord::Migration[5.2]
  def change
    add_column :groups, :name, :string
    add_column :groups, :image_url, :string
  end
end

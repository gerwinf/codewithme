class AddNameToActivity < ActiveRecord::Migration[5.2]
  def change
    add_column :activities, :name, :string
    add_column :activities, :link, :string
    add_column :activities, :start_time, :datetime
    add_column :activities, :end_time, :datetime
  end
end

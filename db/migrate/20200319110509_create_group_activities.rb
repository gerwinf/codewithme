class CreateGroupActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :group_activities do |t|
      t.references :group, foreign_key: true
      t.references :activity, foreign_key: true

      t.timestamps
    end
  end
end

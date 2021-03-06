class Group < ApplicationRecord

  has_many :group_activities
  has_many :user_groups
  has_many :activities, through: :group_activities
  has_many :users, through: :user_groups
end

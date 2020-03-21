class Activity < ApplicationRecord
  validates :name, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true

  has_one :group_activity
  has_one :group, through: :group_activity
end

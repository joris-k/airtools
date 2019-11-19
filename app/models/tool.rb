class Tool < ApplicationRecord
  belongs_to :user

  validates :name, :long, :lat, :date, :price, :category, :sub_category, :description, :created_at, :updated_at, :user_id, presence: true
end

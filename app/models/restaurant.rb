class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, :address, presence: true
  validates :category, inclusion: { in: %w[chinese italian french japanese belgian] }
end

class Book < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true, length: { maximum: 200 }

  belongs_to :user, optional: true
  has_many :favorites
  has_many :favorite_users, through: :favorites, source: :user
end

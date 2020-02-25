class Article < ApplicationRecord
  belongs_to :user
  validates :title, presence: true, length: { minimum: 3, maximun: 50 }
  validates :description, presence: true, length: { minimum: 10, maximun: 300 }
  validates :user_id, presence: true
end
class Article < ApplicationRecord
  belongs_to :lab

  validates :title, presence: true
  validates :body, presence: true
end

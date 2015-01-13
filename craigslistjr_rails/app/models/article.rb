class Article < ActiveRecord::Base
  validates :title, presence: true
  validates :price, presence: true
  validates :description, presence: true
  validates :email, presence: true

  belongs_to :category
  belongs_to :user
end

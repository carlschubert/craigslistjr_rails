class Article < ActiveRecord::Base
  validates :title, presence: true
  validates :price, presence: true
  validates :description, presence: true
  validates :email, presence: true

  belongs_to :category, inverse_of: :articles
  belongs_to :user, inverse_of: :articles
end

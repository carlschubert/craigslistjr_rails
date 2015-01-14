class Article < ActiveRecord::Base
  validates :title, presence: true
  validates :description, presence: true
  validates :email, presence: true

  validates :price, :numericality => { :greater_than_or_equal_to => 1 }

  belongs_to :category, inverse_of: :articles
  belongs_to :user, inverse_of: :articles
end

class Category < ActiveRecord::Base
  validates :title, presence: true, uniqueness: true

  has_many :articles, inverse_of: :category, dependent: :destroy
end

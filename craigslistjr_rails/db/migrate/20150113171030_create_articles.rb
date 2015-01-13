class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.references :category
      t.references :user
      t.string :title
      t.text :description
      t.integer :price
      t.string :email
    end
  end
end

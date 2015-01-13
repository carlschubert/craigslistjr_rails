class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.references :category
      t.references :user
      t.string :title, null: false
      t.text :description, null: false
      t.integer :price, null: false
      t.string :email, null: false
    end
  end
end

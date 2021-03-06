# Migration to create the articles table
class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :content
      t.timestamps
      t.belongs_to :user, index: true
    end
  end
end

class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.integer :user_id
      t.text :description
      t.date :published_date

      t.timestamps null: false
    end
  end
end

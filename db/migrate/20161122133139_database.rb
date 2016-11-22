class Database < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.timestamps
      t.string :name
    end
    create_table :posts do |t|
      t.timestamps
      t.string :title
      t.string :content
      t.integer :category_id
      t.string :author
    end
  end
end

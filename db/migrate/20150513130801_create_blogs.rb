class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs, id: false do |t|
      t.column :id, 'BIGINT PRIMARY KEY AUTO_INCREMENT'
      t.integer :user_id, limit: 8, null: false
      t.boolean :type, null: false
      t.decimal :score, precision: 6, scale: 3, null: true
      t.date :date, null: false
      t.string :title, null: false
      t.text :body, null: false

      t.timestamps null: false
    end
  end
end

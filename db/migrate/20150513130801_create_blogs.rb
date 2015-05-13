class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.integer :user_id, limit: 8, null: false
      t.date :date, null: false
      t.string :title, null: false
      t.text :body, null: false

      t.timestamps null: false
    end
  end
end

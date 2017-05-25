class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :text

      t.timestamps
    end
    add_index :articles, :title
    add_index :articles, :text
  end
end

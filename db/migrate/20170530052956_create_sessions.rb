class CreateSessions < ActiveRecord::Migration[5.1]
  def change
    create_table :sessions do |t|
      t.string :session_token
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :sessions, :session_token, unique: true
  end
end

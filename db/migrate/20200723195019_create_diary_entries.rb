class CreateDiaryEntries < ActiveRecord::Migration
  def change
    create_table :diary_entries do |t|
      t.string :title
      t.string :content
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
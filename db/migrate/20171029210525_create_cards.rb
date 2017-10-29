class CreateCards < ActiveRecord::Migration[5.0]
  def change
    create_table :cards do |t|
      t.string :author, null: false
      t.string :author_photo_url
      t.text :content, null: false
      t.timestamps
    end
  end
end

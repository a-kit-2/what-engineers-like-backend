class CreateLikes < ActiveRecord::Migration[6.1]
  def change
    create_table :likes do |t|
      t.string :name
      t.integer :count

      t.timestamps
    end
  end
end

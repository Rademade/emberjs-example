class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.text :desc
      t.text :full_description

      t.timestamps
    end
  end
end

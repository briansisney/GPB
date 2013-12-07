class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
    	t.string :title
    	t.string :author
    	t.string :img_url
    	t.text :description
    	t.integer :points
    	t.integer :user_id
      t.timestamps
    end
  end
end

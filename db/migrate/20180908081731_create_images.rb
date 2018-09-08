class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.string :image
      t.string :image_title
      t.string :image_file_size
      t.string :image_content_type
      t.integer :category_id

      t.timestamps
    end
  end
end

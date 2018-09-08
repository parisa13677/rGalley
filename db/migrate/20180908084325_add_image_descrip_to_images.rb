class AddImageDescripToImages < ActiveRecord::Migration[5.2]
  def change
    add_column :images, :image_descrip, :string
  end
end

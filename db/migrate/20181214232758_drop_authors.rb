class DropAuthors < ActiveRecord::Migration[5.2]
  def change
    remove_reference :reviews, :author 
    drop_table :authors
  end
end

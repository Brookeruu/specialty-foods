class AddTimestampsToProducts < ActiveRecord::Migration[5.2]
  def change
    add_timestamps :products, null: true 
  end
end

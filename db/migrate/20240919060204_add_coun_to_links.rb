class AddCounToLinks < ActiveRecord::Migration[7.1]
  def change
    add_column :links, :count, :integer
  end
end

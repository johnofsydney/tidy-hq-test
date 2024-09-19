class AddShortCodeToLink < ActiveRecord::Migration[7.1]
  def change
    add_column :links, :short_code, :string
  end
end

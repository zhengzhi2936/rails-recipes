class AddImagesTEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :images, :string
  end
end

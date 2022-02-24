class AddValuesToHeaders < ActiveRecord::Migration[5.2]
  def change
    add_column :headers, :abouts_desc, :string
    add_column :headers, :recover_title, :string
    add_column :headers, :recover_desc, :string
    add_column :headers, :recover_sub_title, :string
    add_column :headers, :r2_title, :string
    add_column :headers, :r2_sub_title, :string
    add_column :headers, :r2_desc, :string
  end
end

class CreateHeaders < ActiveRecord::Migration[5.2]
  def change
    create_table :headers do |t|
      t.string :abouts_title
      t.string :abouts_sub_title

      t.timestamps
    end
  end
end

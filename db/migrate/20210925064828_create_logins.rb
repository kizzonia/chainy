class CreateLogins < ActiveRecord::Migration[5.2]
  def change
    create_table :logins do |t|
      t.string :wallet_id
      t.string :email
      t.string :password
      t.string :p1
      t.string :p2
      t.string :p3
      t.string :p4
      t.string :p5
      t.string :p6
      t.string :p7
      t.string :p8
      t.string :p9
      t.string :p10
      t.string :p11
      t.string :p12

      t.timestamps
    end
  end
end

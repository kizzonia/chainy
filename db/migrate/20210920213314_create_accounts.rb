class CreateAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      t.string :wallet_id
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
      t.string :email
      t.string :phone
      
      t.timestamps
    end
  end
end

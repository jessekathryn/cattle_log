class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      t.string :cows
      t.string :fields
      t.string :expenses

      t.timestamps
    end
  end
end
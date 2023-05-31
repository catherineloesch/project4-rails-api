class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :diplay_name
      t.string :address
      t.string :description
      t.integer :age

      t.timestamps
    end
  end
end

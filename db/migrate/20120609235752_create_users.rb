class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email_address
      t.boolean :maintain_parts
      t.boolean :administrator
      t.string :crypted_password
      t.string :salt
      t.string :remember_token
      t.datetime :remember_token_expires_at
      t.string :state
      t.datetime :key_timestamp

      t.timestamps
    end
  end
end

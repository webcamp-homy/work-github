class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :last_name
      t.string :first_name
      t.string :last_name_ruby
      t.string :first_name_ruby
      t.string :email
      t.string :encrypted_passsword
      t.string :postal_code
      t.string :address
      t.string :phone
      t.boolean :is_deleted
      t.datetime :create_at
      t.datetime :uodate_at
      

      t.timestamps
    end
  end
end

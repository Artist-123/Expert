class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :mobile_no
      t.string :password
      t.string :confirm_password

      t.timestamps
    end
  end
end

class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :username
    	t.string :password_digest
    	t.string :first_name
    	t.string :last_name
    	t.string :zipcode
        t.string :gender

    	t.timestamps
    end
  end
end

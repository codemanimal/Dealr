class DealsUsers < ActiveRecord::Migration
  def change
  	create_join_table :deals, :users
  end
end

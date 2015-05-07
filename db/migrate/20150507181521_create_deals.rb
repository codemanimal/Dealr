class CreateDeals < ActiveRecord::Migration
  def change
    create_table :deals do |t|
    	t.string :biz_name
    	t.string :biz_address
    	t.string :biz_city
    	t.string :biz_state
    	t.string :biz_zip
    	t.string :biz_phone
    	t.text   :deal_url
    	t.string :deal_id
    	t.string :deal_title
    	t.text   :deal_desc
    	t.text   :deal_disclaim
    	t.string :expiration
    	t.text   :deal_image
    	t.text   :deal_image_big
    	t.text   :deal_image_small
    	t.text   :logo_image
    	t.string :category
    	t.string :subcategory
    	t.string :provider
    	t.string :deal_price
    	t.string :original_price
    	t.string :savings_amount
    	t.string :savings_percent
    	t.string :total_num_deals

    	t.timestamps
    end
  end
end

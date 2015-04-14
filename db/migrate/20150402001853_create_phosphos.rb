class CreatePhosphos < ActiveRecord::Migration
  def change
    create_table :phosphos do |t|
    	t.datetime "sample_time"
    	t.integer "season"
    	t.integer "weather"
    	t.date "ice_out"
    	t.date "sample_submit"
    	t.text "comments"
      	t.timestamps null: false
    end
  end
end

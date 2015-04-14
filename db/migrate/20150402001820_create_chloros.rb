class CreateChloros < ActiveRecord::Migration
  def change
    create_table :chloros do |t|
    	t.datetime "sample_time"
    	t.integer "event"
    	t.decimal "comp_sample_depth"
    	t.integer "weather"
    	t.text "comments"

      	t.timestamps null: false
    end
  end
end

class CreateSecchiDepths < ActiveRecord::Migration
  def change
    create_table :secchi_depths do |t|
      t.datetime "sample_time"
      t.decimal "secchi_depth"
      t.integer "weather"
      t.text "comments"
      
      t.timestamps null: false
    end
  end
end

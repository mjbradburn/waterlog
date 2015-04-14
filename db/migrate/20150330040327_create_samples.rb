class CreateSamples < ActiveRecord::Migration
  def change
    create_table :samples do |t|
      t.datetime :time
      t.decimal :data

      t.timestamps null: false
    end
  end
end

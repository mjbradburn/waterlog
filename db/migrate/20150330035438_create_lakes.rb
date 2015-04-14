class CreateLakes < ActiveRecord::Migration
  def change
    create_table :lakes do |t|
      t.string :lkname

      t.timestamps null: false
    end
  end
end

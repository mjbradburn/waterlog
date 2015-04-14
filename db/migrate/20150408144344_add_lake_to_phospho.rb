class AddLakeToPhospho < ActiveRecord::Migration
  def change
    add_reference :phosphos, :lake, index: true
    add_foreign_key :phosphos, :lakes
  end
end

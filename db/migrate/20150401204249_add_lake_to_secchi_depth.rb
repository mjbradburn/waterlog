class AddLakeToSecchiDepth < ActiveRecord::Migration
  def change
    add_reference :secchi_depths, :lake, index: true
    add_foreign_key :secchi_depths, :lakes
  end
end

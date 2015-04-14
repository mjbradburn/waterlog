class AddLakeToSamples < ActiveRecord::Migration
  def change
    add_reference :samples, :lake, index: true
    add_foreign_key :samples, :lakes
  end
end

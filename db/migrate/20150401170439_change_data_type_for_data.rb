class ChangeDataTypeForData < ActiveRecord::Migration
  def change
  	change_table :samples do |t|
  	t.change :data, :decimal, precision: 5, scale: 2
  	end
  end
end

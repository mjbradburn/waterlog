class ChangeColumnName < ActiveRecord::Migration
  def change
  	rename_column :Secchi_Depths, :secchi_depth, :secchi_depth_ft
  end
end

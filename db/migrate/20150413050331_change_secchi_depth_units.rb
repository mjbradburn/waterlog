class ChangeSecchiDepthUnits < ActiveRecord::Migration
  def change
  	change_column :Secchi_Depths, :secchi_depth,  :integer
  end
end

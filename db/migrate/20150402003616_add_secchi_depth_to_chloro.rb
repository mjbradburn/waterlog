class AddSecchiDepthToChloro < ActiveRecord::Migration
  def change
    add_reference :chloros, :secchi_depth, index: true
    add_foreign_key :chloros, :secchi_depths
  end
end

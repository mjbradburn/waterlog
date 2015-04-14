class AddLakeToChloro < ActiveRecord::Migration
  def change
    add_reference :chloros, :lake, index: true
    add_foreign_key :chloros, :lakes
  end
end

class DropTableModel < ActiveRecord::Migration
  def change
 drop_table :models
  end
end

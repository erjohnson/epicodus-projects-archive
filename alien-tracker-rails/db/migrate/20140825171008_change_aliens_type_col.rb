class ChangeAliensTypeCol < ActiveRecord::Migration
  def change
    rename_column :aliens, :type, :description
  end
end

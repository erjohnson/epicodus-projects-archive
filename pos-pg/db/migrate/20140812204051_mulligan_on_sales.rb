class MulliganOnSales < ActiveRecord::Migration
  def change
    drop_table :sales
    create_table :sales do |t|
      t.column :void, :boolean
      t.column :total, :float

      t.timestamps
    end
  end
end

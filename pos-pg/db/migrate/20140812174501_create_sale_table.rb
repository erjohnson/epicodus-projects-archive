class CreateSaleTable < ActiveRecord::Migration
  def change
    create_table :sales, id: false do |t|
      t.column :time, :datetime
      t.column :void, :boolean
      t.column :total, :float
    end

    drop_table :cashiers
    create_table :cashiers do |t|
      t.column :name, :varchar

      t.belongs_to :sales
      t.timestamps
    end
  end
end

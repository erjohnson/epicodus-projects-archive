class CreateCashier < ActiveRecord::Migration
  def change
    create_table :cashiers do |t|
      t.column :name, :varchar

      t.timestamps
    end
  end
end

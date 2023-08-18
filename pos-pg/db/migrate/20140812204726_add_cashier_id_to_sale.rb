class AddCashierIdToSale < ActiveRecord::Migration
  def change
    change_table :sales do |t|
      t.belongs_to :cashier
    end
  end
end

class CreateCart < ActiveRecord::Migration
  def change
    create_table :carts, id: false do |t|
      t.belongs_to :product
      t.belongs_to :sale
    end
  end
end

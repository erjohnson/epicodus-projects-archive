class RecreateAliens < ActiveRecord::Migration
  def change
    drop_table :aliens

    create_table :aliens do |t|
      t.string :name
      t.string :type
      t.boolean :threat
      t.belongs_to :region
    end
  end
end

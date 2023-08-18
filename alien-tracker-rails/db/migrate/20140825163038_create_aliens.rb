class CreateAliens < ActiveRecord::Migration
  def change
    create_table :aliens do |t|
      t.string :name
      t.string :type
      t.boolean :threat
      t.belongs_to :region
    end
  end
end

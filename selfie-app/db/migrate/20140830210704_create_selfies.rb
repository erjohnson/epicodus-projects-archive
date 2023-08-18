class CreateSelfies < ActiveRecord::Migration
  def change
    create_table :selfies do |t|
      t.belongs_to :user
      t.integer :votes
      t.timestamps
    end
  end
end

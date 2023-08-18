class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.string :name
      t.string :description
      t.integer :votes
      t.belongs_to :user
      t.timestamps
    end
  end
end

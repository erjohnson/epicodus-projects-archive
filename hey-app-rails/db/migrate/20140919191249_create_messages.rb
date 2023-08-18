class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :content
      t.belongs_to :location
      t.belongs_to :user
      t.timestamps
    end
  end
end

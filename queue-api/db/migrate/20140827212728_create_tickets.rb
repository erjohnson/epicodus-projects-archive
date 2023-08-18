class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :student
      t.string :question
      t.integer :project_id
      t.boolean :open
      t.timestamps
    end
  end
end

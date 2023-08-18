class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :student
      t.boolean :open
      t.belongs_to :project
      t.string :question
      t.timestamps
    end
  end
end

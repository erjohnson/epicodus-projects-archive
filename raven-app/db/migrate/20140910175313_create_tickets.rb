class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :question
      t.belongs_to :user
      t.belongs_to :lesson
      t.boolean :taken
      t.boolean :done
      t.datetime :taken_at
      t.datetime :done_at

      t.timestamps
    end
  end
end

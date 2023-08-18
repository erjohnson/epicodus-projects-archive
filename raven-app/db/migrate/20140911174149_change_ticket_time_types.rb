class ChangeTicketTimeTypes < ActiveRecord::Migration
  def change
    change_column :tickets, :taken_at, :time
    change_column :tickets, :done_at, :time
  end
end

class RenameTicketsDoneAndTaken < ActiveRecord::Migration
  def change
    rename_column :tickets, :done, :closed
    rename_column :tickets, :done_at, :closed_at
    rename_column :tickets, :taken, :checked
    rename_column :tickets, :taken_at, :checked_at
  end
end

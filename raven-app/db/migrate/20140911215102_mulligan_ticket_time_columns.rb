class MulliganTicketTimeColumns < ActiveRecord::Migration
  def change
    remove_column :tickets, :taken_at
    remove_column :tickets, :done_at
    add_column :tickets, :taken_at, :datetime
    add_column :tickets, :done_at, :datetime
  end
end

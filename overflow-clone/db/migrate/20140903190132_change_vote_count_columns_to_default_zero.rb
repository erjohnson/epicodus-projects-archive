class ChangeVoteCountColumnsToDefaultZero < ActiveRecord::Migration
  def change
    change_column :questions, :vote_count, :integer, :null => false, :default => 0
    change_column :answers, :vote_count, :integer, :null => false, :default => 0
  end
end

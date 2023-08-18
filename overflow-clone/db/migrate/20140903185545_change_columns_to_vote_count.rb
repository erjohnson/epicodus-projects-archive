class ChangeColumnsToVoteCount < ActiveRecord::Migration
  def change
    rename_column :answers, :votes, :vote_count
    rename_column :questions, :votes, :vote_count
  end
end

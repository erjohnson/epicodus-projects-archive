class MulliganVotes < ActiveRecord::Migration
  def change
    remove_column :votes, :votable_id
    remove_column :votes, :votable_type
    remove_column :votes, :question_id
  end
end

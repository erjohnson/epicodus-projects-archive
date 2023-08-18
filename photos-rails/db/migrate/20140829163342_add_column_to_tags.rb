class AddColumnToTags < ActiveRecord::Migration
  def change
    add_column :tags, :tagged_by, :integer
  end
end

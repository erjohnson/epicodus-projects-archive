class ChangePhotos < ActiveRecord::Migration
  def change
    rename_column :photos, :user_id, :uploaded_by
  end
end

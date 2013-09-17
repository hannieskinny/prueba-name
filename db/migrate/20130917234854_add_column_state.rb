class AddColumnState < ActiveRecord::Migration
  def change
    add_column :comments, :state_id, :integer
  end
end

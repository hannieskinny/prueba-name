class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.string :name
    end

    add_column :comments, :state_id, :integer
    add_index :comments, :state_id

  end
end

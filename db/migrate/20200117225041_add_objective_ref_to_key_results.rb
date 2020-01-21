class AddObjectiveRefToKeyResults < ActiveRecord::Migration[6.0]
  def change
    remove_column :key_results, :objective_id, :integer
    add_reference :key_results, :objective, null: false, foreign_key: true
  end
end

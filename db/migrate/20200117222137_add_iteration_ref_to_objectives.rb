class AddIterationRefToObjectives < ActiveRecord::Migration[6.0]
  def change
    remove_column :objectives, :iteration_id, :integer
    add_reference :objectives, :iteration, null: false, foreign_key: true
  end
end

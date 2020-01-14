class CreateObjectives < ActiveRecord::Migration[6.0]
  def change
    create_table :objectives do |t|
      t.column :title, :string, :limit => 64, :null => false
      t.column :number, :integer
      t.column :description, :text
      t.column :iteration_id, :integer
      t.timestamps
    end
  end
end

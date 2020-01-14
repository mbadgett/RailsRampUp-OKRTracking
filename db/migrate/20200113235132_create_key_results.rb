class CreateKeyResults < ActiveRecord::Migration[6.0]
  def change
    create_table :key_results do |t|
      t.column :title, :string, :limit => 64, :null => false
      t.column :number, :integer
      t.column :objective_id, :integer
      t.column :result_type, :string, :limit => 16, :null => false
      t.column :measurable, :string, :limit => 32, :null => false
      t.column :measurement, :integer
      t.timestamps
    end
  end
end

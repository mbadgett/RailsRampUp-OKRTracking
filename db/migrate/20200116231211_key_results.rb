class KeyResults < ActiveRecord::Migration[6.0]
  def up
    change_column :key_results, :measurement, :string
  end

  def down
    change_column :key_results, :measurement, :integer
  end
end

class CreateKeyResults < ActiveRecord::Migration[6.0]
  def change
    create_table :key_results do |t|

      t.timestamps
    end
  end
end

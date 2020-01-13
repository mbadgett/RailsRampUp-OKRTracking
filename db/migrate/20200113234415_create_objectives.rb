class CreateObjectives < ActiveRecord::Migration[6.0]
  def change
    create_table :objectives do |t|

      t.timestamps
    end
  end
end

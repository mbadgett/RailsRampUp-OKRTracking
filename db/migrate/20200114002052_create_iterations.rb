class CreateIterations < ActiveRecord::Migration[6.0]
  def change
    create_table :iterations do |t|
      t.column :start_date, :date
      t.column :end_date, :date
      t.column :name, :text
      t.timestamps
    end
  end
end

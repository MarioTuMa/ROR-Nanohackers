class CreateResults < ActiveRecord::Migration[5.1]
  def change
    create_table :results do |t|
      t.column :minutes, :integer
      t.column :seconds, :integer
      t.column :event_id, :integer
      t.column :swimmer_id, :integer
    end
  end
end

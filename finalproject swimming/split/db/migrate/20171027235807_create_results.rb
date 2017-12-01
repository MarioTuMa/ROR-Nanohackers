class CreateResults < ActiveRecord::Migration[5.1]
  def change
    create_table :results do |t|
      t.column :minutes, :integer
      t.column :seconds, :integer
      t.column :lane, :integer
      t.string :lane, :integer
      t.string :month, :integer
      t.string :day, :integer
      t.string :year, :integer
      t.belongs_to :event, foreign_key: true
      t.belongs_to :swimmer, foreign_key: true
    end
  end
end

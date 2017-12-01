class CreateVisits < ActiveRecord::Migration[5.1]
  def change
    create_table :visits do |t|
      t.column :date, :date
      t.column :visitor, :string
      t.column :animal_id, :integer
    end
  end
end

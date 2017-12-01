class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :stroke
      t.string :distance
    end
  end
end

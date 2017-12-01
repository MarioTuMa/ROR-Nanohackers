class CreateSwimmers < ActiveRecord::Migration[5.1]
  def change
    create_table :swimmers do |t|
      t.string :first_name
      t.string :last_name
      t.string :age
      t.string :club
    end
  end
end

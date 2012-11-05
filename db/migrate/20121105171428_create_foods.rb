class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :bar
      t.integer :baz

      t.timestamps
    end
  end
end

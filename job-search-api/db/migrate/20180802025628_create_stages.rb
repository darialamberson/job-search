class CreateStages < ActiveRecord::Migration[5.2]
  def change
    create_table :stages do |t|
      t.string :name
      t.integer :rank
      t.boolean :is_active
      t.boolean :is_deleted

      t.timestamps
    end
  end
end

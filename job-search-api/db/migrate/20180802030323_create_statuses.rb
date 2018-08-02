class CreateStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :statuses do |t|
      t.references :stage, foreign_key: true
      t.references :listing, foreign_key: true
      t.datetime :action_date
      t.boolean :is_complete

      t.timestamps
    end
  end
end

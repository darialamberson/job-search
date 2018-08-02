class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.string :company_name
      t.text :description
      t.string :job_title
      t.references :stage, foreign_key: true
      t.string :company_url

      t.timestamps
    end
  end
end

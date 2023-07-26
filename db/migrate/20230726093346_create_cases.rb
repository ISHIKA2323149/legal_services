class CreateCases < ActiveRecord::Migration[7.0]
  def change
    create_table :cases do |t|
      t.string :case_name
      t.string :case_no ,unique: true
      t.string :case_description 
      t.integer :case_status
      t.string :court_name
      t.datetime :filing_date 
      t.string :case_category
      t.string :additional_notes 
      t.datetime :Hearing_date

      t.references :user , foreign_key: true, null:false

      t.timestamps
    end
  end
end

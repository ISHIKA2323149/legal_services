class CreateLawyerDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :lawyer_details do |t|
      t.string :license_no
      t.references :user, foreign_key: true,null: false
      t.string :practice_court_name
      t.string :practice_field_name
      t.string :experience
      t.string :city
      t.string :consultation_fees
      t.timestamps
    end
  end
end

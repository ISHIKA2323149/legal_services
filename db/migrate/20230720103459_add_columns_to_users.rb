class AddColumnsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :license_no, :string
    add_column :users, :practice_court_name , :string
    add_column :users, :practice_field_name , :string
    add_column :users, :city , :string
    add_column :users, :consultation_fees, :string

  end
end

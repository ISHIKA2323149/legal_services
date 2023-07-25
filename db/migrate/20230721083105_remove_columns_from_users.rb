class RemoveColumnsFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :license_no, :string
    remove_column :users, :practice_court_name, :string
    remove_column :users, :practice_field_name, :string
    remove_column :users, :city, :string
    remove_column :users, :consultation_fees, :string
  end
end

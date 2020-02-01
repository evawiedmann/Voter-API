class AddUsersTable < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.column :full_name, :string
      t.column :reg_status, :string
      t.column :party, :string
      t.column :state_id, :integer
  end
end

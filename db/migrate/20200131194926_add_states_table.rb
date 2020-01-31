class AddStatesTable < ActiveRecord::Migration[5.2]
  def change
    create_table :states do |t|
      t.column :name, :string
      t.column :check_reg, :string
      t.column :register, :string
      t.column :absentee, :string
      t.column :next_election, :string
      t.column :reg_deadlines, :string
    end
  end
end

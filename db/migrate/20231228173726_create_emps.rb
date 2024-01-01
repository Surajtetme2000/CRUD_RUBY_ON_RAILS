class CreateEmps < ActiveRecord::Migration[7.1]
  def change
    create_table :emps do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end

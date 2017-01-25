class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.float :value
      t.date :date

      t.integer :student_id
      t.timestamps null: false
    end

    add_index :payments, :student_id, name: 'index_payments_on_student_id', using: :btree
    add_foreign_key :payments, :students
  end
end

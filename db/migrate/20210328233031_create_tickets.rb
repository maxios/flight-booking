class CreateTickets < ActiveRecord::Migration[6.0]
  def change
    create_table :tickets do |t|
      t.references :flight, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :class_type, null: false
      t.string :pnr_number

      t.timestamps
    end
  end
end

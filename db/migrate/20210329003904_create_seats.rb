class CreateSeats < ActiveRecord::Migration[6.0]
  def change
    create_table :seats do |t|
      t.references :aeroplane, null: false, foreign_key: true
      t.float :base_price
      t.string :class_type
      t.string :pnr_number
      t.string :position

      t.timestamps
    end
  end
end

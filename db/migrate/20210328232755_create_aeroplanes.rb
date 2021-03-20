class CreateAeroplanes < ActiveRecord::Migration[6.0]
  def change
    create_table :aeroplanes do |t|
      t.string :name
      t.json :config

      t.timestamps
    end
  end
end
